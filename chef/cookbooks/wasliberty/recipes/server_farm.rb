#########################################################################
########################################################
#	  Copyright IBM Corp. 2016, 2017
########################################################
# <> Start server recipe (server_farm.rb)
# <> Add the required configuration for the liberty server farm
#
#########################################################################

# Cookbook Name  - wasliberty
# Recipe         - server_farm
#----------------------------------------------------------------------------------------------------------------------------------------------

farm_servers = if node.attribute?('was_liberty/farm_servers') && !node['was_liberty']['farm_servers'].empty?
                 node['was_liberty']['farm_servers'].split(/[\s,]+/).reject(&:empty?)
               else
                 Dir.entries("#{node['was_liberty']['wlp_user_dir']}/servers/").reject { |f| f.start_with?(".") }
               end

farm_servers.each do |server_name|
  server_config_file = "#{node['was_liberty']['wlp_user_dir']}/servers/#{server_name}/server.xml"

  wasliberty_xml_file 'add_localConnector-1.0_feature' do
    source server_config_file
    search_path '/server/featureManager/feature'
    content 'localConnector-1.0'
  end

  wasliberty_xml_file 'add_pluginConfiguration' do
    source server_config_file
    search_path '/server/pluginConfiguration'
    node_attrs(
                 'webserverPort' => node['was_liberty']['webserverPort'],
                 'webserverSecurePort' => node['was_liberty']['webserverSecurePort'],
                 'logFileName' => "",
                 'pluginInstallRoot' => "",
                 'webserverName' => node['was_liberty']['webserverName'],
                 'sslKeyringLocation' => node['was_liberty']['sslKeyringLocation'],
                 'sslStashfileLocation' => node['was_liberty']['sslStashfileLocation'],
                 'sslCertlabel' => node['was_liberty']['sslCertlabel']
    )
  end

  template "#{node['was_liberty']['wlp_user_dir']}/servers/#{server_name}/server.env" do
    source "server.env.erb"
    owner node['was_liberty']['install_user']
    group node['was_liberty']['install_grp']
  end

  # ------------------------------
  # server farm plugin generation
  # ------------------------------

  # Start all servers on the node
  wasliberty_wl_server server_name do
    action :start
    user node['was_liberty']['install_user']
    install_dir node['was_liberty']['install_dir']
    force_restart true
  end

  # Create targetPath directory
  directory "#{node['was_liberty']['wlp_user_dir']}/tmp" do
    action :create
    owner node['was_liberty']['install_user']
    group node['was_liberty']['install_grp']
  end

  # .Generate plugin
  execute 'generate_plugin' do
    command "#{node['was_liberty']['install_dir']}/bin/pluginUtility generate --server=#{server_name} --targetPath=#{node['was_liberty']['wlp_user_dir']}/tmp/plugin-cfg_#{server_name}.xml"
    user node['was_liberty']['install_user']
    group node['was_liberty']['install_grp']
  end

  # wasliberty_xml_file 'add_pluginConfiguration' do
  #   source server_config_file
  #   search_path '/server/pluginConfiguration'
  #   node_attrs {
  #     'webserverPort' => node['was_liberty']['webserverPort'],
  #     'webserverSecurePort' => node['was_liberty']['webserverSecurePort'],
  #     'logFileName' => "",
  #     'pluginInstallRoot' => "",
  #     'webserverName' => node['was_liberty']['webserverName'],
  #     'sslKeyringLocation' => node['was_liberty']['sslKeyringLocation'],
  #     'sslStashfileLocation' => node['was_liberty']['sslStashfileLocation'],
  #     'sslCertlabel' => node['was_liberty']['sslCertlabel']
  #   }
  # end

  # ruby_block 'add_localConnector-1.0_feature' do
  #   block do
  #     add_element(fl=server_config_file,
  #                 search_path='/server/featureManager/feature',
  #                 content='localConnector-1.0',
  #                 attributes={})
  #   end
  # end
  #
  # ruby_block 'add_pluginConfiguration' do
  #   block do
  #     add_element(fl=server_config_file,
  #                 search_path='/server/pluginConfiguration',
  #                 content=nil,
  #                 attributes={
  #                   webserverPort: node['was_liberty']['webserverPort'],
  #                   webserverSecurePort: node['was_liberty']['webserverSecurePort'],
  #                   logFileName: "",
  #                   pluginInstallRoot: "",
  #                   webserverName: node['was_liberty']['webserverName'],
  #                   sslKeyringLocation: node['was_liberty']['sslKeyringLocation'],
  #                   sslStashfileLocation: node['was_liberty']['sslStashfileLocation'],
  #                   sslCertlabel: node['was_liberty']['sslCertlabel']
  #                 })
  #   end
  # end

end

########################################################
#	  Copyright IBM Corp. 2016, 2016
########################################################

name 'wasliberty'
maintainer 'IBM Corp'
maintainer_email ''
license 'Copyright IBM Corp. 2012, 2017'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.36'
depends 'ibm_cloud_utils'
depends 'im'
description <<-EOF
## DESCRIPTION
Installs/Configures WAS Liberty

### Platform
* RHEL 6.6
* RHEL 7.2

## Versions
WAS Liberty version 16.0.0.4

## Use Cases
* Product installation
* Product install and basic configuration
* Product Uninstallation

## Platform Pre-Requisites
* Linux YUM Repository
* Installation Manager Repository
EOF

attribute 'ssh/private_key/content',
          :default => '',
          :description => 'the content of the private ssh key',
          :displayname => 'private_key_content',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'ssh/private_key/path',
          :default => '',
          :description => 'the path where the private ssh key will be stored',
          :displayname => 'private_key_path',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/base_version',
          :default => '16.0.4',
          :description => 'liberty version',
          :displayname => 'liberty version',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/cleanpackages',
          :default => '',
          :description => 'Flag to remove installation archives after extraction',
          :displayname => 'cleanpackages',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/create_os_users',
          :default => '',
          :description => 'Create the OS users: true or false',
          :displayname => 'create_os_users',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/edition',
          :default => '',
          :description => 'Liberty edition to be installed',
          :displayname => 'liberty_edition',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/central_node',
          :default => '',
          :description => 'hotname/IP of the liberty node which will gather and merge the plugins. Leave empty when deploying the central node itself',
          :displayname => 'central_node',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/httpd_plugins_dir',
          :default => '',
          :description => 'the directory on the web server where the merged plugin will be pushed',
          :displayname => 'httpd_plugins_dir',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/httpd_user',
          :default => '',
          :description => 'the user for pushing the merged plugin file to the web server host',
          :displayname => 'httpd_user',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/logFileName',
          :default => 'serverfarm.log',
          :description => 'liberty farm log File Name',
          :displayname => 'logFileName',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/mergedplugins_dir',
          :default => '',
          :description => 'the directory where the merged plugins are stored',
          :displayname => 'mergedplugins_dir',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/pluginInstallRoot',
          :default => 'plugin_install_root',
          :description => 'liberty farm plugin Install Root',
          :displayname => 'pluginInstallRoot',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/plugin_cpy_user',
          :default => '',
          :description => 'the user for pushing the plugins to the central liberty node',
          :displayname => 'plugin_cpy_user',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/plugins_dir',
          :default => '',
          :description => 'the directory where the generated plugins are stored',
          :displayname => 'plugins_dir',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/sslCertlabel',
          :default => 'definedbyuser',
          :description => 'liberty farm ssl Cert label',
          :displayname => 'sslCertlabel',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/sslKeyringLocation',
          :default => '/var/liberty/sslkeyring',
          :description => 'liberty farm ssl Keyring Location',
          :displayname => 'sslKeyringLocation',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/sslStashfileLocation',
          :default => '/var/liberty/stashfile',
          :description => 'liberty farm ssl Stashfile Location',
          :displayname => 'sslStashfileLocation',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/webserverName',
          :default => 'websrv',
          :description => 'https web server name',
          :displayname => 'webserverName',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/webserverPort',
          :default => '80',
          :description => 'http port of the web server',
          :displayname => 'webserverPort',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/webserverSecurePort',
          :default => '9043',
          :description => 'https port of the web server',
          :displayname => 'webserverSecurePort',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/farm/webserverhost',
          :default => '',
          :description => 'hostname/IP of the webserver',
          :displayname => 'webserverhost',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/features/embeddablecontainer',
          :default => 'true',
          :description => 'Liberty embeddablecontainer feature',
          :displayname => 'embeddablecontainer_feature',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/features/liberty',
          :default => 'true',
          :description => 'liberty feature',
          :displayname => 'liberty_feature',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/fixpack',
          :default => '',
          :description => 'liberty fixpack version',
          :displayname => 'liberty fixpack version',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/fixpack_java',
          :default => '',
          :description => 'java fixpack version',
          :displayname => 'java_fixpack_version',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/force_restart',
          :default => 'true',
          :description => 'force_restart',
          :displayname => 'force server restart',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :type => 'string'
attribute 'was_liberty/im_install_dir',
          :default => '',
          :description => 'IM install dir',
          :displayname => 'im_install_dir',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/im_shared_dir',
          :default => '',
          :description => 'IM shared dir',
          :displayname => 'im_shared_dir',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/install_dir',
          :default => '',
          :description => 'Liberty install dir',
          :displayname => 'install_dir',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/install_grp',
          :default => '',
          :description => 'Liberty install group',
          :displayname => 'install_group',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/install_java',
          :default => 'true',
          :description => 'install_java_flag',
          :displayname => 'install_java flag',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/install_javafp',
          :default => 'true',
          :description => 'install_javafp_flag',
          :displayname => 'install_javafp flag',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/install_user',
          :default => '',
          :description => 'Liberty install user',
          :displayname => 'install_user',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/java_version',
          :default => '8.0',
          :description => 'java version',
          :displayname => 'java version',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/feature',
          :default => 'webProfile-7.0 adminCenter-1.0',
          :description => 'liberty server01 feature',
          :displayname => 'liberty_server01_feature',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/httpport',
          :default => '9080',
          :description => 'liberty server01 httpport',
          :displayname => 'liberty_server01_httpport',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/httpsport',
          :default => '9443',
          :description => 'liberty server01 httpsport',
          :displayname => 'liberty_server01_httpsport',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/jvm_params',
          :default => 'false',
          :description => 'liberty server01 jvm_params',
          :displayname => 'liberty_server01_jvm_params',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/keystore_id',
          :default => 'defaultKeyStore',
          :description => 'liberty server01 keystore_id',
          :displayname => 'liberty_server01_keystore_id',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/keystore_password',
          :default => '',
          :description => 'liberty server01 keystore_password',
          :displayname => 'liberty_server01_keystore_password',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'true',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/name',
          :default => 'defaultServer',
          :description => 'liberty server name',
          :displayname => 'liberty_server_name',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/timeout',
          :default => '20',
          :description => 'liberty server01 timeout',
          :displayname => 'liberty_server01_timeout',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/users/admin_user/name',
          :default => 'admin',
          :description => 'liberty server01 admin_user name',
          :displayname => 'liberty_server01_admin_user_name',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/users/admin_user/password',
          :default => '',
          :description => 'liberty server01 admin_user password',
          :displayname => 'liberty_server01_admin_user_password',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'true',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/users/admin_user/role',
          :default => 'admin',
          :description => 'liberty server01 admin_user role',
          :displayname => 'liberty_server01_admin_user_role',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v71/enable',
          :default => 'false',
          :description => 'flag for installing java common_ibm_sdk_v71',
          :displayname => 'common_ibm_sdk_v71_enable',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v71/feature',
          :default => 'com.ibm.sdk.71',
          :description => 'feature name for java common_ibm_sdk_v71',
          :displayname => 'common_ibm_sdk_v71_feature',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v71/offering_id',
          :default => 'com.ibm.java.jdk.v71',
          :description => 'offering _id for java common_ibm_sdk_v71',
          :displayname => 'common_ibm_sdk_v71_offering_id',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v8/enable',
          :default => 'true',
          :description => 'flag for installing java common_ibm_sdk_v8',
          :displayname => 'common_ibm_sdk_v8_enable',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v8/feature',
          :default => 'com.ibm.sdk.8',
          :description => 'feature name for java common_ibm_sdk_v8',
          :displayname => 'common_ibm_sdk_v8_feature',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v8/offering_id',
          :default => 'com.ibm.java.jdk.v8',
          :description => 'offering _id for java common_ibm_sdk_v8',
          :displayname => 'common_ibm_sdk_v8_offering_id',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v70/enable',
          :default => 'false',
          :description => 'flag for installing java websphere_sdk_v70',
          :displayname => 'websphere_sdk_v70_enable',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v70/feature',
          :default => 'com.ibm.sdk.7',
          :description => 'feature name for java websphere_sdk_v70',
          :displayname => 'websphere_sdk_v70_feature',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v70/offering_id',
          :default => 'com.ibm.websphere.liberty.IBMJAVA.v70',
          :description => 'offering _id for java websphere_sdk_v70',
          :displayname => 'websphere_sdk_v70_offering_id',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v80/enable',
          :default => 'false',
          :description => 'flag for installing java websphere_sdk_v80',
          :displayname => 'websphere_sdk_v80_enable',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v80/feature',
          :default => 'com.ibm.sdk.8',
          :description => 'feature name for java websphere_sdk_v80',
          :displayname => 'websphere_sdk_v80_feature',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v80/offering_id',
          :default => 'com.ibm.websphere.liberty.IBMJAVA.v80',
          :description => 'offering _id for java websphere_sdk_v80',
          :displayname => 'websphere_sdk_v80_offering_id',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/start_servers',
          :default => '',
          :description => 'List of servers to be started',
          :displayname => 'start_servers',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/stop_servers',
          :default => '',
          :description => 'List of servers to be stopped',
          :displayname => 'stop_servers',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/tmp',
          :default => '',
          :description => 'Temp directory to be used',
          :displayname => 'temp_dir',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/wlp_user_dir',
          :default => '',
          :description => 'Liberty directory for user data',
          :displayname => 'wlp_user_dir',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
recipe 'wasliberty::cleanup.rb', '
Cleanup recipe (cleanup.rb)
Cleanup recipe removes the folders, where binaries extracted
'
recipe 'wasliberty::config_srv.rb', '
Install  recipe (install.rb)
Installation recipe, source the version, unpack the file and install product
'
recipe 'wasliberty::create_server.rb', '
Create server recipe (create_server.rb)
Create a new liberty server
'
recipe 'wasliberty::default.rb', '
'
recipe 'wasliberty::fixpack.rb', '
Fixpack  recipe (fixpack.rb)
Fixpack recipe, source the version, unpack the file and apply maintenance to the  product
'
recipe 'wasliberty::gather_evidence.rb', '
Gather evidence recipe (gather_evidence.rb)
Gather evidence that installation was successful
'
recipe 'wasliberty::install.rb', '
Install  recipe (install.rb)
Installation recipe, source the version, unpack the file and install product
'
recipe 'wasliberty::prereq.rb', '
Pre-Requisite recipe (prereq.rb)
Pre-Requisite recipe to install packages, create users and folders.
'
recipe 'wasliberty::server_farm.rb', '
Start server recipe (server_farm.rb)
Add the required configuration for the liberty server farm
'
recipe 'wasliberty::start_server.rb', '
Start server recipe (start_server.rb)
Start server recipe, start liberty servers
'
recipe 'wasliberty::stop_servers.rb', '
Stop serverss recipe (stop_servers.rb)
Stop servers recipe, stop liberty servers
'
recipe 'wasliberty::uninstall.rb', '
Uninstall recipe (uninstall.rb)
Uninstalls liberty core and removes the folders, where the binaries were extracted
'

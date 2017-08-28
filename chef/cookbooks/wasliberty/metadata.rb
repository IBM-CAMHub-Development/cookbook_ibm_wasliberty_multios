########################################################
#	  Copyright IBM Corp. 2016, 2016
########################################################

name 'wasliberty'
maintainer 'IBM Corp'
maintainer_email ''
license 'Copyright IBM Corp. 2012, 2017'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.45'
depends 'ibm_cloud_utils'
depends 'im'
description <<-EOF
## DESCRIPTION
Installs/Configures WAS Liberty

### Platform
* RHEL 6.6
* RHEL 7.2
* Ubuntu Server 14.04 or greater

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
          :default => '17.0.2',
          :description => 'The release and fixpack level for WebSphere Liberty to be installed. Example formats are 8.5.5.11 or 17.0.0.2',
          :displayname => 'Liberty version',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
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
          :description => 'The userid that performs the installation of Liberty should be created',
          :displayname => 'Create Liberty Installation userid',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/edition',
          :choice => ['base', 'core', 'nd'],
          :default => '',
          :description => 'Indicates which Liberty offering should be installed. Valid values are: base, core, nd',
          :displayname => 'Liberty Edition to be installed',
          :options => ['base', 'core', 'nd'],
          :parm_type => 'node',
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
          :selectable => 'true',
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
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/webserverPort',
          :default => '80',
          :description => 'IBM HTTP Web server port',
          :displayname => 'HTTP Transport port that the webserver is listening on',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/webserverSecurePort',
          :description => 'IBM HTTP Secure web server port'
attribute 'was_liberty/farm/webserverhost',
          :default => '',
          :description => 'hostname/IP of the webserver',
          :displayname => 'webserverhost',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
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
          :description => 'The fixpack version of Liberty that should be isntalled',
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
          :description => 'The installation root directory for the installation manager product binaries',
          :displayname => 'Installation Manager installation directory',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/im_shared_dir',
          :default => '',
          :description => 'The shared resources directory is where installation artifacts are located that can be used by one or more package groups',
          :displayname => 'Installation Manager shared resources directory',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
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
          :description => 'The Java SDK version that should be installed with the WebSphere Application Server. Example format is 8.0.4.70',
          :displayname => 'Java SDK version to be installed',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/feature',
          :default => 'webProfile-7.0 adminCenter-1.0',
          :description => 'Liberty features that should be included in the server definition',
          :displayname => 'Lists the Liberty features that should be included in the feature manager list',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/httpport',
          :default => '9080',
          :description => 'Default HTTP Transport Port',
          :displayname => 'HTTP Transport value that will be set in the defaultHttpEndpoint endpoint in server.xml',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/httpsport',
          :default => '9443',
          :description => 'Secure Default HTTP Transport Port',
          :displayname => 'Secure HTTP Transport value that will be set in the defaultHttpEndpoint endpoint in server.xml',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/jvm_params',
          :default => 'true',
          :description => 'Liberty server JVM settings',
          :displayname => 'Set the default JVM heap sizes for the liberty server',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/keystore_id',
          :description => 'Liberty keystore id" ,
# <md>          :displayname => '
attribute 'was_liberty/liberty_servers/server01/keystore_password',
          :default => '',
          :description => 'Liberty Keystore password',
          :displayname => 'Liberty keystore password used to protect the Liberty keystore id',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'true',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/name',
          :default => 'defaultServer',
          :description => 'Name of Liberty server to be created',
          :displayname => 'Name of the initial Liberty server to be created during provisioning',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
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
          :description => 'Liberty administrative user name',
          :displayname => 'Administrative console username used for accessing the console',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server01/users/admin_user/password',
          :default => '',
          :description => 'Liberty administrative user name password',
          :displayname => 'Password for the Liberty administrative user name',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'true',
          :selectable => 'true',
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
          :description => 'Indicates that Java 7.1 SDK version should be installed',
          :displayname => 'Install JDK 7.1 SDK',
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
          :description => 'Java 7.1 SDK installation manager offering ID value',
          :displayname => 'Java 7.1 SDK installation manager offering id',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v8/enable',
          :default => 'true',
          :description => 'Indicates that Java 8 SDK version should be installed',
          :displayname => 'Install JDK 8 SDK',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v8/feature',
          :default => 'com.ibm.sdk.8',
          :description => 'Java 8 SDK installation manager offering ID value',
          :displayname => 'Java 8 SDK installation manager offering id',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v8/offering_id',
          :default => 'com.ibm.java.jdk.v8',
          :description => 'Java SDK installation manager offering ID value',
          :displayname => 'Java 8 SDK installation manager offering id',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v70/enable',
          :default => 'false',
          :description => 'Indicates that WebSphere Liberty Java 7.0 SDK version should be installed',
          :displayname => 'Install WebSphere Liberty Java 7.0 SDK ',
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
          :displayname => 'WebSphere Liberty Java 7.0 SDK installation manager offering id',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'false',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v80/enable',
          :default => 'false',
          :description => 'Indicates that WebSphere Liberty Java 8 SDK version should be installed',
          :displayname => 'Install WebSphere JDK 8 SDK',
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
          :displayname => 'WebSphere Liberty Java 8 SDK installation manager offering id',
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

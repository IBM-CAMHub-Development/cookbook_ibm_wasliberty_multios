########################################################
#   Copyright IBM Corp. 2016, 2019
########################################################

name 'wasliberty'
maintainer 'IBM Corp'
maintainer_email ''
license 'Copyright IBM Corp. 2012, 2019'
issues_url   'https://github.com/IBM-CAMHub-Open/cookbook_ibm_wasliberty_multios/issues'
source_url   'https://github.com/IBM-CAMHub-Open/cookbook_ibm_wasliberty_multios'
chef_version '>= 12.5' if respond_to?(:chef_version)
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '2.0.2'
depends 'ibm_cloud_utils'
depends 'im'
supports 'redhat'
supports 'debian'
description <<-EOF
## DESCRIPTION
Installs/Configures WAS Liberty

### Platform
* RHEL 6.6
* RHEL 7.2
* Ubuntu Server 14.04 or greater

## Versions
WAS Liberty version 18.0.0.2

## Use Cases
* Product installation
* Product install and basic configuration
* Product Uninstallation

## Platform Pre-Requisites
* Linux YUM Repository
* Installation Manager Repository
EOF

attribute 'ssh/private_key/content',
          :displayname => 'Liberty private key,
# <md>          :description => '
attribute 'ssh/private_key/path',
          :default => '',
          :description => 'Absolute path of the Liberty private key',
          :displayname => 'Liberty private key path',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/base_version',
          :default => '18.0.2',
          :description => 'The release and fixpack level for WebSphere Liberty to be installed. Example formats are 8.5.5.11 or 18.0.2',
          :displayname => 'Liberty version',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/cleanpackages',
          :default => '',
          :description => 'A flag to indicate whether installation packages are to be cleaned after a successful installation',
          :displayname => 'Liberty cleanpackages flag',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/create_os_users',
          :default => '',
          :description => 'The userid that performs the installation of Liberty should be created',
          :displayname => 'Create Liberty Installation userid',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/edition',
          :choice => ['base', 'core', 'nd'],
          :default => '',
          :description => 'Indicates which Liberty offering should be installed. Valid values are: base, core, nd',
          :displayname => 'Liberty Edition to be installed',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :options => ['base', 'core', 'nd'],
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/central_node',
          :default => '',
          :description => 'Hostname/IP of the liberty node which will gather and merge the plugins. Leave empty when deploying the central node itself',
          :displayname => 'Liberty farm central node',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/httpd_plugins_dir',
          :default => '',
          :description => 'Liberty farm directory on the web server where the merged plugin will be pushed',
          :descriptive => 'Liberty http plugins dir',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/httpd_user',
          :default => '',
          :descriptive => 'Liberty farm user for pushing the merged plugin file to the web server host',
          :displayname => 'Liberty farm http user',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/logFileName',
          :default => 'serverfarm.log',
          :description => 'Name of the Liberty farm log file',
          :displayname => 'liberty farm log File Name',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/mergedplugins_dir',
          :default => '',
          :description => 'The directory where the merged plugins are stored on the central node',
          :displayname => 'Liberty farm merged plugin directory',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/pluginInstallRoot',
          :default => 'plugin_install_root',
          :description => 'pluginInstallRoot',
          :displayname => 'Liberty farm plugin Install Root',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/plugin_cpy_user',
          :default => '',
          :description => 'The user for pushing the plugins to the central liberty node',
          :displayname => 'Liberty plugin copy user',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/plugins_dir',
          :default => '',
          :description => 'The directory where the generated plugins are stored',
          :displayname => 'Liberty farm plugin dir',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/sslCertlabel',
          :default => 'definedbyuser',
          :description => 'Name of the ssl Cert label which will be added to the keystore',
          :displayname => 'Liberty farm ssl Cert label',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/sslKeyringLocation',
          :default => '/var/liberty/sslkeyring',
          :description => 'Full path to the liberty farm ssl Keyring, path must not include the name of the Keyring file',
          :displayname => 'Liberty farm ssl Stashfile directory',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/sslStashfileLocation',
          :default => '/var/liberty/stashfile',
          :description => 'Full path to the Liberty farm ssl Stashfile, path must not include the name of the stash file',
          :displayname => 'Liberty farm ssl Stashfile directory',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/webserverName',
          :default => 'websrv',
          :description => 'A descriptive name for the web server',
          :displayname => 'Liberty farm web server name',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/webserverPort',
          :default => '80',
          :description => 'HTTP Transport port that the webserver is listening on',
          :displayname => 'Liberty farm HTTP Web server port',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/farm/webserverSecurePort',
          :displayname => 'Liberty farm HTTP Secure web server port'
attribute 'was_liberty/farm/webserverhost',
          :default => '',
          :description => 'Host name of the web server, not this DNS name must be resolvable',
          :displayname => 'Liberty web server host',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/features/embeddablecontainer',
          :default => 'false',
          :description => 'Flag which determines whether the embeddablecontainer feature will be installed',
          :displayname => 'Liberty embeddablecontainer flag',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/features/liberty',
          :default => 'true',
          :description => 'Flag which determines whether the liberty feature will be installed',
          :displayname => 'Liberty liberty flag',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/fixpack',
          :default => '',
          :description => 'The fixpack version of Liberty that should be installed, for initial installation this may be left blank.',
          :displayname => 'liberty fixpack version',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/fixpack_java',
          :default => '',
          :description => 'The java fixpack version to be installed, this field may be left blank.',
          :displayname => 'Java fixpack version',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/fixpack_names/file1/filename',
          :default => '',
          :description => 'The fixpack filename of Liberty that should be installed, for initial installation this may be left blank.',
          :displayname => 'liberty fixpack filename',
          :hidden => 'false',
          :immutable_after_create => 'false',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/fixpack_names/file1/sha256',
          :default => '',
          :description => 'The fixpack filename sha256 hash (can be computed using linux command sha256sum *filename*), for initial installation this may be left blank.',
          :displayname => 'liberty fixpack filename sha256 hash',
          :hidden => 'false',
          :immutable_after_create => 'false',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/fixpack_names/java8/file1/filename',
          :default => '',
          :description => 'The IBM Java SDK 8 all platforms fixpack (http://www-01.ibm.com/support/docview.wss?uid=swg24042430#80535) archive part 1 filename. There will be 3 archive files in total. For initial installation this may be left blank.',
          :displayname => 'liberty java file1 filename',
          :hidden => 'false',
          :immutable_after_create => 'false',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/fixpack_names/java8/file2/filename',
          :default => '',
          :description => 'The IBM Java SDK 8 all platforms fixpack (http://www-01.ibm.com/support/docview.wss?uid=swg24042430#80535) archive part 2 filename. There will be 3 archive files in total. For initial installation this may be left blank.',
          :displayname => 'liberty java file1 filename',
          :hidden => 'false',
          :immutable_after_create => 'false',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/fixpack_names/java8/file3/filename',
          :default => '',
          :description => 'The IBM Java SDK 8 all platforms fixpack (http://www-01.ibm.com/support/docview.wss?uid=swg24042430#80535) archive part 3 filename. There will be 3 archive files in total. For initial installation this may be left blank.',
          :displayname => 'liberty java file3 filename',
          :hidden => 'false',
          :immutable_after_create => 'false',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/force_restart',
          :default => 'true',
          :description => 'If set to true, the server will be restarted, if false, the server will not be restarted',
          :displayname => 'Liberty force restart',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :type => 'string'
attribute 'was_liberty/im_shared_dir',
          :default => '',
          :description => 'The shared resources directory is where installation artifacts are located that can be used by one or more package groups',
          :displayname => 'Installation Manager shared resources directory',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/install_dir',
          :default => '',
          :description => 'The installation root directory for the WebSphere Liberty product binaries',
          :displayname => 'WebSphere product installation directory',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/install_grp',
          :default => '',
          :description => 'Operating system group name that will be assigned to the product installation',
          :displayname => 'Liberty group name',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/install_java',
          :default => 'true',
          :description => 'If true, Java will be installed from archives',
          :displayname => 'Java install from archives',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/install_javafp',
          :default => 'true',
          :description => 'If true, a java fixpack will be installed',
          :displayname => 'Java fixpack flag',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/install_user',
          :default => '',
          :description => 'Operating system userid that will be used to install the product. Userid will be created if it does not exist',
          :displayname => 'Liberty installation userid',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/java_version',
          :displayname => 'Liberty Java SDK version,
# <md>          :description => '
attribute 'was_liberty/liberty_servers/server($INDEX)/feature',
          :default => 'webProfile-7.0 adminCenter-1.0',
          :description => 'Lists the Liberty features that should be included in the feature manager list. For example, webProfile-7.0 adminCenter-1.0',
          :displayname => 'Liberty features that should be included in the server definition',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server($INDEX)/httpport',
          :default => '9080',
          :description => 'HTTP Transport value that will be set in the defaultHttpEndpoint endpoint in server.xml',
          :displayname => 'Liberty server http port',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server($INDEX)/httpsport',
          :default => '9443',
          :description => 'Secure HTTP Transport value that will be set in the defaultHttpEndpoint endpoint in server.xml',
          :displayname => 'Liberty server https port',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server($INDEX)/jvm_params',
          :default => '-Xms256m -Xmx2048m',
          :description => 'Set the default JVM heap sizes for the liberty server, for example, -Xms256m -Xmx2048m',
          :displayname => 'Liberty server JVM settings',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server($INDEX)/keystore_id',
          :default => 'defaultKeyStore',
          :description => 'Keystore id that will be used when setting up the keyStore attribute in the server.xml',
          :displayname => 'Liberty keystore id',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server($INDEX)/keystore_password',
          :default => '',
          :description => 'Liberty keystore password used to protect the Liberty keystore id, this value will be stored in Chef Vault',
          :displayname => 'Liberty Keystore password',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :regex => '^[!-~]{8,32}$',
          :regexdesc => 'Allow 8 to 32 printable ASCII characters except space.',
          :required => 'recommended',
          :secret => 'true',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server($INDEX)/name',
          :default => 'defaultServer',
          :description => 'Name of the initial Liberty server to be created during provisioning',
          :displayname => 'Liberty server name',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server($INDEX)/timeout',
          :default => '20',
          :description => 'Liberty server timeout value',
          :displayname => 'liberty server timeout',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server($INDEX)/users/admin_user/name',
          :default => 'admin',
          :description => 'Administrative console username used for accessing the console, the associated password is the admin_user password',
          :displayname => 'Liberty administrative user name',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server($INDEX)/users/admin_user/password',
          :default => '',
          :description => 'Password for the Liberty administrative user name, this value to be stored in the Chef Vault',
          :displayname => 'Liberty administrative user name password',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :regex => '^[!-~]{8,32}$',
          :regexdesc => 'Allow 8 to 32 printable ASCII characters except space.',
          :required => 'recommended',
          :secret => 'true',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/liberty_servers/server($INDEX)/users/admin_user/role',
          :default => 'admin',
          :description => 'Liberty role for which administrative users are to be added to, the admin_user will be added to this role by default',
          :displayname => 'liberty admin user role',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/runas_user',
          :default => '',
          :description => 'Operating system userid that will be used to run the product. Userid will be created if it does not exist',
          :displayname => 'Liberty runas user',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v71/enable',
          :default => 'false',
          :description => 'Indicates that Java 7.1 SDK version should be installed',
          :displayname => 'Liberty Install JDK 7.1 SDK',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v71/feature',
          :default => 'com.ibm.sdk.71',
          :description => 'Feature name for java 7.1, default = com.ibm.sdk.71',
          :displayname => 'Java 7.1 SDK installation manager feature id',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v71/offering_id',
          :default => 'com.ibm.java.jdk.v71',
          :description => 'Java 7.1 SDK installation manager offering ID value, default = com.ibm.java.jdk.v71',
          :displayname => 'Java 7.1 SDK installation manager offering id',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v8/enable',
          :default => 'true',
          :description => 'Flag to determine whether Java 8 SDK will be installed or not, only one Java flag is applicable',
          :displayname => 'Liberty Install JDK 8 SDK',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v8/feature',
          :default => 'com.ibm.sdk.8',
          :description => 'Installation Manager response file option to install Java 8 SDK, default = com.ibm.sdk.8',
          :displayname => 'Java 8 SDK installation manager feature id',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/common_ibm_sdk_v8/offering_id',
          :default => 'com.ibm.java.jdk.v8',
          :description => 'Java SDK installation manager offering ID value, default = com.ibm.java.jdk.v8',
          :displayname => 'Java 8 SDK installation manager offering id',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v70/enable',
          :default => 'false',
          :description => 'Indicates that WebSphere Liberty Java 7 SDK version should be installed, only one Java flag is applicable',
          :displayname => 'Install WebSphere JDK 7 SDK',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v70/feature',
          :default => 'com.ibm.sdk.7',
          :description => 'Feature name for java common_ibm_sdk_v71, default = com.ibm.sdk.7',
          :displayname => 'Java 7.0 SDK installation manager feature id',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v70/offering_id',
          :default => 'com.ibm.websphere.liberty.IBMJAVA.v70',
          :description => 'Java 7.0 SDK installation manager offering ID value, default = com.ibm.websphere.liberty.IBMJAVA.v70',
          :displayname => 'Java 7.0 SDK installation manager offering id',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v80/enable',
          :default => 'false',
          :description => 'Indicates that WebSphere Liberty Java 8 SDK version should be installed, only one Java flag is applicable',
          :displayname => 'Install WebSphere JDK 8 SDK',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v80/feature',
          :default => 'com.ibm.sdk.8',
          :description => 'Feature name for java 8.0, default = com.ibm.sdk.8',
          :displayname => 'Java 8.0 SDK installation manager feature id',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/sdk/websphere_sdk_v80/offering_id',
          :default => 'com.ibm.websphere.liberty.IBMJAVA.v80',
          :description => 'Java 8.0 SDK installation manager offering ID value, default = com.ibm.websphere.liberty.IBMJAVA.v80',
          :displayname => 'Java 8.0 SDK installation manager offering id',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/start_servers',
          :default => '',
          :description => 'List of liberty application servers to be stopped',
          :displayname => 'Liberty servers to be started',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/stop_servers',
          :default => '',
          :description => 'List of liberty application servers to be stopped',
          :displayname => 'Liberty servers to be stopped',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/tmp',
          :default => '',
          :description => 'Temp directory to be used for temporary files, this directory will be emptied after the installation',
          :displayname => 'Liberty temporary directory',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
          :type => 'string'
attribute 'was_liberty/wlp_user_dir',
          :default => '',
          :description => 'Liberty directory which product configuration will be written',
          :displayname => 'Liberty data dir',
          :hidden => 'false',
          :immutable_after_create => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'true',
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
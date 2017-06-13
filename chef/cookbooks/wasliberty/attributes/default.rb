########################################################
#	  Copyright IBM Corp. 2016, 2017
########################################################

####################
# PRODUCT SETTINGS
####################

# <> List of servers to be stopped
# <md> attribute 'was_liberty/stop_servers',
# <md>          :displayname => 'stop_servers',
# <md>          :description => 'List of servers to be stopped',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['stop_servers'] = ''

# <> List of servers to be started
# <md> attribute 'was_liberty/start_servers',
# <md>          :displayname => 'start_servers',
# <md>          :description => 'List of servers to be started',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['start_servers'] = ''

# <> Flag to remove installation archives after extraction
# <md> attribute 'was_liberty/cleanpackages',
# <md>          :displayname => 'cleanpackages',
# <md>          :description => 'Flag to remove installation archives after extraction',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['cleanpackages'] = false

# <> Temp directory to be used
# <md> attribute 'was_liberty/tmp',
# <md>          :displayname => 'temp_dir',
# <md>          :description => 'Temp directory to be used',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['tmp'] = node['ibm']['temp_dir'] + "/was_liberty"

# <> Liberty install user
# <md> attribute 'was_liberty/install_user',
# <md>          :displayname => 'install_user',
# <md>          :description => 'Liberty install user',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['install_user'] = ''

# <> Liberty install group
# <md> attribute 'was_liberty/install_grp',
# <md>          :displayname => 'install_group',
# <md>          :description => 'Liberty install group',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['install_grp'] = ''

# <> Liberty install dir
# <md> attribute 'was_liberty/install_dir',
# <md>          :displayname => 'install_dir',
# <md>          :description => 'Liberty install dir',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['install_dir'] = ''

# <> Liberty user dir
# <md> attribute 'was_liberty/wlp_user_dir',
# <md>          :displayname => 'wlp_user_dir',
# <md>          :description => 'Liberty directory for user data',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['wlp_user_dir'] = "#{node['was_liberty']['install_dir']}/usr"

# <> IM install dir
# <md> attribute 'was_liberty/im_install_dir',
# <md>          :displayname => 'im_install_dir',
# <md>          :description => 'IM install dir',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['im_install_dir'] = ''

# <> Shared resources location of IBM Installation Manager
# <md> attribute 'was_liberty/im_shared_dir',
# <md>          :displayname => 'im_shared_dir',
# <md>          :description => 'IM shared dir',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['im_shared_dir'] = "/opt/IBM/IMShared"

# <> Create the OS users: 'true' or 'false'
# <md> attribute 'was_liberty/create_os_users',
# <md>          :displayname => 'create_os_users',
# <md>          :description => 'Create the OS users: true or false',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['create_os_users'] = 'true'

# <> Liberty edition to be installed
# <md> attribute 'was_liberty/edition',
# <md>          :displayname => 'liberty_edition',
# <md>          :description => 'Liberty edition to be installed',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['edition'] = 'base'
# NOTE: only one value can be set to true
# <> WAS Liberty edition to install and configure
# default['was_liberty']['editions'] = {
#   'base'    => "false",
#   'nd'      => "true",
#   'core'    => "false"
# }

# <> Liberty features to install
# <md> attribute 'was_liberty/features/embeddablecontainer',
# <md>          :displayname => 'embeddablecontainer_feature',
# <md>          :description => 'Liberty embeddablecontainer feature',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/features/liberty',
# <md>          :displayname => 'liberty_feature',
# <md>          :description => 'liberty feature',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['features'] = {
  'embeddablecontainer' => "true",
  'liberty'             => "true"
}

####################
# Liberty Product Installation Settings
####################

# NOTE: only one version should be set to true
# <> Java oferings
# <md> attribute 'was_liberty/sdk/common_ibm_sdk_v8/enable',
# <md>          :displayname => 'common_ibm_sdk_v8_enable',
# <md>          :description => 'flag for installing java common_ibm_sdk_v8',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/sdk/common_ibm_sdk_v8/offering_id',
# <md>          :displayname => 'common_ibm_sdk_v8_offering_id',
# <md>          :description => 'offering _id for java common_ibm_sdk_v8',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.java.jdk.v8',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/sdk/common_ibm_sdk_v8/feature',
# <md>          :displayname => 'common_ibm_sdk_v8_feature',
# <md>          :description => 'feature name for java common_ibm_sdk_v8',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.sdk.8',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/sdk/common_ibm_sdk_v71/enable',
# <md>          :displayname => 'common_ibm_sdk_v71_enable',
# <md>          :description => 'flag for installing java common_ibm_sdk_v71',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/sdk/common_ibm_sdk_v71/offering_id',
# <md>          :displayname => 'common_ibm_sdk_v71_offering_id',
# <md>          :description => 'offering _id for java common_ibm_sdk_v71',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.java.jdk.v71',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/sdk/common_ibm_sdk_v71/feature',
# <md>          :displayname => 'common_ibm_sdk_v71_feature',
# <md>          :description => 'feature name for java common_ibm_sdk_v71',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.sdk.71',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/sdk/websphere_sdk_v80/enable',
# <md>          :displayname => 'websphere_sdk_v80_enable',
# <md>          :description => 'flag for installing java websphere_sdk_v80',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/sdk/websphere_sdk_v80/offering_id',
# <md>          :displayname => 'websphere_sdk_v80_offering_id',
# <md>          :description => 'offering _id for java websphere_sdk_v80',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.websphere.liberty.IBMJAVA.v80',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/sdk/websphere_sdk_v80/feature',
# <md>          :displayname => 'websphere_sdk_v80_feature',
# <md>          :description => 'feature name for java websphere_sdk_v80',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.sdk.8',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/sdk/websphere_sdk_v70/enable',
# <md>          :displayname => 'websphere_sdk_v70_enable',
# <md>          :description => 'flag for installing java websphere_sdk_v70',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/sdk/websphere_sdk_v70/offering_id',
# <md>          :displayname => 'websphere_sdk_v70_offering_id',
# <md>          :description => 'offering _id for java websphere_sdk_v70',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.websphere.liberty.IBMJAVA.v70',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/sdk/websphere_sdk_v70/feature',
# <md>          :displayname => 'websphere_sdk_v70_feature',
# <md>          :description => 'feature name for java websphere_sdk_v70',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.sdk.7',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['sdk'] = {
  'common_ibm_sdk_v8'  => { 'enable' => "true",
                            'offering_id' => "com.ibm.java.jdk.v8",
                            'feature' => "com.ibm.sdk.8" },
  'common_ibm_sdk_v71' => { 'enable' => "false",
                            'offering_id' => "com.ibm.java.jdk.v71",
                            'feature' => "com.ibm.sdk.71" },
  'websphere_sdk_v80'  => { 'enable' => "false",
                            'offering_id' => "com.ibm.websphere.liberty.IBMJAVA.v80",
                            'feature' => "com.ibm.sdk.8" },
  'websphere_sdk_v70'  => { 'enable' => "false",
                            'offering_id' => "com.ibm.websphere.liberty.IBMJAVA.v70",
                            'feature' => "com.ibm.sdk.7" }
}

# <> Liberty version to install
# <md> attribute 'was_liberty/base_version',
# <md>          :displayname => 'liberty version',
# <md>          :description => 'liberty version',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '16.0.4',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['base_version'] = "16.0.4" # ~ip_checker

# <> Java version to install
# <md> attribute 'was_liberty/java_version',
# <md>          :displayname => 'java version',
# <md>          :description => 'java version',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '8.0',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['java_version'] = "8.0"

# <> Liberty fixpack to install
# <md> attribute 'was_liberty/fixpack',
# <md>          :displayname => 'liberty fixpack version',
# <md>          :description => 'liberty fixpack version',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['fixpack'] = "" # ~ip_checker

# <> if true, IBM Java will be installed from archives
# <md> attribute 'was_liberty/install_java',
# <md>          :description => 'install_java_flag',
# <md>          :displayname => 'install_java flag',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['install_java'] = "true"

# <> Java fixpack to install
# <md> attribute 'was_liberty/fixpack_java',
# <md>          :displayname => 'java_fixpack_version',
# <md>          :description => 'java fixpack version',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['fixpack_java'] = "" # ~ip_checker

# <> if true, IBM Java fp will be installed
# <md> attribute 'was_liberty/install_javafp',
# <md>          :description => 'install_javafp_flag',
# <md>          :displayname => 'install_javafp flag',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['install_javafp'] = "true"

#################################
# Liberty Server settings
#################################

# <> Force a server restart  even if it is running
# <md> attribute 'was_liberty/force_restart',
# <md>          :description => 'force_restart',
# <md>          :displayname => 'force server restart',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => true,
# <md>          :selectable => 'true',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['force_restart'] = true

# <> Liberty servers parameters
# <md> attribute 'was_liberty/liberty_servers/server01/name',
# <md>          :description => 'liberty server name',
# <md>          :displayname => 'liberty_server_name',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'srv01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/liberty_servers/server01/jvm_params',
# <md>          :description => 'liberty server01 jvm_params',
# <md>          :displayname => 'liberty_server01_jvm_params',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '-Xms256m -Xmx2048m',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/liberty_servers/server01/timeout',
# <md>          :description => 'liberty server01 timeout',
# <md>          :displayname => 'liberty_server01_timeout',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '20',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/liberty_servers/server01/httpport',
# <md>          :description => 'liberty server01 httpport',
# <md>          :displayname => 'liberty_server01_httpport',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9080',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/liberty_servers/server01/httpsport',
# <md>          :description => 'liberty server01 httpsport',
# <md>          :displayname => 'liberty_server01_httpsport',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9443',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/liberty_servers/server01/feature',
# <md>          :description => 'liberty server01 feature',
# <md>          :displayname => 'liberty_server01_feature',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'webProfile-7.0 adminCenter-1.0',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/liberty_servers/server01/keystore_id',
# <md>          :description => 'liberty server01 keystore_id',
# <md>          :displayname => 'liberty_server01_keystore_id',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'defaultKeyStore',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/liberty_servers/server01/keystore_password',
# <md>          :description => 'liberty server01 keystore_password',
# <md>          :displayname => 'liberty_server01_keystore_password',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'true'
# <md> attribute 'was_liberty/liberty_servers/server01/users/user01/name',
# <md>          :description => 'liberty server01 user01 name',
# <md>          :displayname => 'liberty_server01_user01_name',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'admin1',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/liberty_servers/server01/users/user01/password',
# <md>          :description => 'liberty server01 user01 password',
# <md>          :displayname => 'liberty_server01_user01_password',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'true'
# <md> attribute 'was_liberty/liberty_servers/server01/users/user01/role',
# <md>          :description => 'liberty server01 user01 role',
# <md>          :displayname => 'liberty_server01_user01_role',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'admin',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/liberty_servers/server01/users/user02/name',
# <md>          :description => 'liberty server01 user02 name',
# <md>          :displayname => 'liberty_server01_user02_name',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'nonadmin1',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
# <md> attribute 'was_liberty/liberty_servers/server01/users/user02/password',
# <md>          :description => 'liberty server01 user02 password',
# <md>          :displayname => 'liberty_server01_user02_password',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'true'
# <md> attribute 'was_liberty/liberty_servers/server01/users/user02/role',
# <md>          :description => 'liberty server01 user02 role',
# <md>          :displayname => 'liberty_server01_user02_role',

# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'nonadmin',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node'
default['was_liberty']['liberty_servers'] = {
  'server01' => { 'name' => "srv01",
                  'jvm_params' => "-Xms256m -Xmx2048m",
                  'timeout' => "20",
                  'httpport' => "9080",
                  'httpsport' => "9443",
                  'feature' => "webProfile-7.0 adminCenter-1.0",
                  'keystore_id' => "defaultKeyStore",
                  'keystore_password' => "",
                  'users' => {
                    'user01' => {
                      'name' => "admin1",
                      'password' => "",
                      'role' => "admin"
                    },
                    'user02' => {
                      'name' => "nonadmin1",
                      'password' => "",
                      'role' => "nonadmin"
                    }
                  }
                }
}

# server farm configuration
default['was_liberty']['webserverPort'] = '80'

default['was_liberty']['webserverSecurePort'] = '81'

default['was_liberty']['webserverName'] = 'websrv'

default['was_liberty']['sslKeyringLocation'] = '/tmp/liberty/sslkeyring'

default['was_liberty']['sslStashfileLocation'] = 'tmp/liberty/stashfile'

default['was_liberty']['sslCertlabel'] = 'definedbyuser'

Wasliberty Cookbook
===================

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


Requirements
------------

### Platform:

*No platforms defined*

### Cookbooks:

* ibm_cloud_utils
* im

Attributes
----------

<table>
  <tr>
    <td>Attribute</td>
    <td>Description</td>
    <td>Default</td>
  </tr>
  <tr>
    <td><code>node['ssh']['private_key']['content']</code></td>
    <td>Liberty private key,
# <md>          :displayname => </td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['ssh']['private_key']['path']</code></td>
    <td>Liberty private key path</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['base_version']</code></td>
    <td>The release and fixpack level for WebSphere Liberty to be installed. Example formats are 8.5.5.11 or 17.0.2</td>
    <td><code>17.0.2</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['cleanpackages']</code></td>
    <td>A flag to indicate whether installation packages are to be cleaned after a successful installation</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['create_os_users']</code></td>
    <td>The userid that performs the installation of Liberty should be created</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['edition']</code></td>
    <td>Indicates which Liberty offering should be installed. Valid values are: base, core, nd</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['central_node']</code></td>
    <td>Liberty farm central node</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['httpd_plugins_dir']</code></td>
    <td>Liberty http plugins dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['httpd_user']</code></td>
    <td>Liberty farm http user</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['logFileName']</code></td>
    <td>liberty farm log File Name</td>
    <td><code>serverfarm.log</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['mergedplugins_dir']</code></td>
    <td>Liberty farm merged plugin directory</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['pluginInstallRoot']</code></td>
    <td>Liberty farm plugin Install Root</td>
    <td><code>plugin_install_root</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['plugin_cpy_user']</code></td>
    <td>Liberty plugin copy user</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['plugins_dir']</code></td>
    <td>Liberty farm plugin dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['sslCertlabel']</code></td>
    <td>Liberty farm ssl Cert label</td>
    <td><code>definedbyuser</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['sslKeyringLocation']</code></td>
    <td>Liberty farm ssl Stashfile directory</td>
    <td><code>/var/liberty/sslkeyring</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['sslStashfileLocation']</code></td>
    <td>Liberty farm ssl Stashfile directory</td>
    <td><code>/var/liberty/stashfile</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['webserverName']</code></td>
    <td>Liberty farm web server name</td>
    <td><code>websrv</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['webserverPort']</code></td>
    <td>Liberty farm HTTP Web server port</td>
    <td><code>80</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['webserverSecurePort']</code></td>
    <td>Liberty farm HTTP Secure web server port</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['webserverhost']</code></td>
    <td>Liberty web server host</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['features']['embeddablecontainer']</code></td>
    <td>Flag which determines whether the embeddablecontainer feature will be installed</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['features']['liberty']</code></td>
    <td>Flag which determines whether the liberty feature will be installed</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['fixpack']</code></td>
    <td>The fixpack version of Liberty that should be isntalled, for initial installation this may be left blank</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['fixpack_java']</code></td>
    <td>The java fixpack version to be installed, this field may be left blank</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['force_restart']</code></td>
    <td>Liberty force restart</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['im_shared_dir']</code></td>
    <td>The shared resources directory is where installation artifacts are located that can be used by one or more package groups</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['install_dir']</code></td>
    <td>The installation root directory for the WebSphere Liberty product binaries</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['install_grp']</code></td>
    <td>Operating system group name that will be assigned to the product installation</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['install_java']</code></td>
    <td>Java install from archives</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['install_javafp']</code></td>
    <td>Java fixpack flag</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['install_user']</code></td>
    <td>Operating system userid that will be used to install the product. Userid will be created if it does not exist</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['java_version']</code></td>
    <td></td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server($INDEX)']['feature']</code></td>
    <td>Liberty features that should be included in the server definition</td>
    <td><code>webProfile-7.0 adminCenter-1.0</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server($INDEX)']['httpport']</code></td>
    <td>Liberty server http port</td>
    <td><code>9080</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server($INDEX)']['httpsport']</code></td>
    <td>Liberty server https port</td>
    <td><code>9443</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server($INDEX)']['jvm_params']</code></td>
    <td>Liberty server JVM settings</td>
    <td><code>-Xms256m -Xmx2048m</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server($INDEX)']['keystore_id']</code></td>
    <td>Liberty keystore id</td>
    <td><code>defaultKeyStore</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server($INDEX)']['keystore_password']</code></td>
    <td>Liberty Keystore password</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server($INDEX)']['name']</code></td>
    <td>Liberty server name</td>
    <td><code>defaultServer</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server($INDEX)']['timeout']</code></td>
    <td>liberty server timeout</td>
    <td><code>20</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server($INDEX)']['users']['admin_user']['name']</code></td>
    <td>Liberty administrative user name</td>
    <td><code>admin</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server($INDEX)']['users']['admin_user']['password']</code></td>
    <td>Liberty administrative user name password</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server($INDEX)']['users']['admin_user']['role']</code></td>
    <td>liberty admin user role</td>
    <td><code>admin</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['common_ibm_sdk_v71']['enable']</code></td>
    <td>Indicates that Java 7.1 SDK version should be installed</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['common_ibm_sdk_v71']['feature']</code></td>
    <td>Feature name for java 7.1, default = com.ibm.sdk.71</td>
    <td><code>com.ibm.sdk.71</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['common_ibm_sdk_v71']['offering_id']</code></td>
    <td>Java 7.1 SDK installation manager offering ID value, default = com.ibm.java.jdk.v71</td>
    <td><code>com.ibm.java.jdk.v71</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['common_ibm_sdk_v8']['enable']</code></td>
    <td>Flag to determine whether Java 8 SDK will be installed or not, only one Java flag is applicable</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['common_ibm_sdk_v8']['feature']</code></td>
    <td>Installation Manager response file option to install Java 8 SDK, default = com.ibm.sdk.8</td>
    <td><code>com.ibm.sdk.8</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['common_ibm_sdk_v8']['offering_id']</code></td>
    <td>Java SDK installation manager offering ID value, default = com.ibm.java.jdk.v8</td>
    <td><code>com.ibm.java.jdk.v8</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['websphere_sdk_v70']['enable']</code></td>
    <td>Indicates that WebSphere Liberty Java 7 SDK version should be installed, only one Java flag is applicable</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['websphere_sdk_v70']['feature']</code></td>
    <td>Feature name for java common_ibm_sdk_v71, default = com.ibm.sdk.7</td>
    <td><code>com.ibm.sdk.7</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['websphere_sdk_v70']['offering_id']</code></td>
    <td>Java 7.0 SDK installation manager offering ID value, default = com.ibm.websphere.liberty.IBMJAVA.v70</td>
    <td><code>com.ibm.websphere.liberty.IBMJAVA.v70</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['websphere_sdk_v80']['enable']</code></td>
    <td>Indicates that WebSphere Liberty Java 8 SDK version should be installed, only one Java flag is applicable</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['websphere_sdk_v80']['feature']</code></td>
    <td>Feature name for java 8.0, default = com.ibm.sdk.8</td>
    <td><code>com.ibm.sdk.8</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['websphere_sdk_v80']['offering_id']</code></td>
    <td>Java 8.0 SDK installation manager offering ID value, default = com.ibm.websphere.liberty.IBMJAVA.v80</td>
    <td><code>com.ibm.websphere.liberty.IBMJAVA.v80</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['start_servers']</code></td>
    <td>List of liberty application servers to be stopped</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['stop_servers']</code></td>
    <td>List of liberty application servers to be stopped</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['tmp']</code></td>
    <td>Temp directory to be used for temporary files, this directory will be emptied after the installation</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['wlp_user_dir']</code></td>
    <td>Liberty directory which product configuration will be written</td>
    <td><code></code></td>
  </tr>
</table>

Recipes
-------

### wasliberty::cleanup.rb


Cleanup recipe (cleanup.rb)
Cleanup recipe removes the folders, where binaries extracted


### wasliberty::config_srv.rb


Install  recipe (install.rb)
Installation recipe, source the version, unpack the file and install product


### wasliberty::create_server.rb


Create server recipe (create_server.rb)
Create a new liberty server


### wasliberty::default.rb




### wasliberty::fixpack.rb


Fixpack  recipe (fixpack.rb)
Fixpack recipe, source the version, unpack the file and apply maintenance to the  product


### wasliberty::gather_evidence.rb


Gather evidence recipe (gather_evidence.rb)
Gather evidence that installation was successful


### wasliberty::install.rb


Install  recipe (install.rb)
Installation recipe, source the version, unpack the file and install product


### wasliberty::prereq.rb


Pre-Requisite recipe (prereq.rb)
Pre-Requisite recipe to install packages, create users and folders.


### wasliberty::server_farm.rb


Start server recipe (server_farm.rb)
Add the required configuration for the liberty server farm


### wasliberty::start_server.rb


Start server recipe (start_server.rb)
Start server recipe, start liberty servers


### wasliberty::stop_servers.rb


Stop serverss recipe (stop_servers.rb)
Stop servers recipe, stop liberty servers


### wasliberty::uninstall.rb


Uninstall recipe (uninstall.rb)
Uninstalls liberty core and removes the folders, where the binaries were extracted



License and Author
------------------

Author:: IBM Corp (<>)

Copyright:: 2017, IBM Corp

License:: Copyright IBM Corp. 2012, 2017


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
    <td>the content of the private ssh key</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['ssh']['private_key']['path']</code></td>
    <td>the path where the private ssh key will be stored</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['base_version']</code></td>
    <td>liberty version</td>
    <td><code>16.0.4</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['cleanpackages']</code></td>
    <td>Flag to remove installation archives after extraction</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['create_os_users']</code></td>
    <td>Create the OS users: true or false</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['edition']</code></td>
    <td>Liberty edition to be installed</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['central_node']</code></td>
    <td>hotname/IP of the liberty node which will gather and merge the plugins. Leave empty when deploying the central node itself</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['httpd_plugins_dir']</code></td>
    <td>the directory on the web server where the merged plugin will be pushed</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['httpd_user']</code></td>
    <td>the user for pushing the merged plugin file to the web server host</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['logFileName']</code></td>
    <td>liberty farm log File Name</td>
    <td><code>serverfarm.log</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['mergedplugins_dir']</code></td>
    <td>the directory where the merged plugins are stored</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['pluginInstallRoot']</code></td>
    <td>liberty farm plugin Install Root</td>
    <td><code>plugin_install_root</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['plugin_cpy_user']</code></td>
    <td>the user for pushing the plugins to the central liberty node</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['plugins_dir']</code></td>
    <td>the directory where the generated plugins are stored</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['sslCertlabel']</code></td>
    <td>liberty farm ssl Cert label</td>
    <td><code>definedbyuser</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['sslKeyringLocation']</code></td>
    <td>liberty farm ssl Keyring Location</td>
    <td><code>/var/liberty/sslkeyring</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['sslStashfileLocation']</code></td>
    <td>liberty farm ssl Stashfile Location</td>
    <td><code>/var/liberty/stashfile</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['webserverName']</code></td>
    <td>https web server name</td>
    <td><code>websrv</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['webserverPort']</code></td>
    <td>http port of the web server</td>
    <td><code>80</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['webserverSecurePort']</code></td>
    <td>https port of the web server</td>
    <td><code>9043</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['farm']['webserverhost']</code></td>
    <td>hostname/IP of the webserver</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['features']['embeddablecontainer']</code></td>
    <td>Liberty embeddablecontainer feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['features']['liberty']</code></td>
    <td>liberty feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['fixpack']</code></td>
    <td>liberty fixpack version</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['fixpack_java']</code></td>
    <td>java fixpack version</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['force_restart']</code></td>
    <td>force_restart</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['im_install_dir']</code></td>
    <td>IM install dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['im_shared_dir']</code></td>
    <td>IM shared dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['install_dir']</code></td>
    <td>Liberty install dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['install_grp']</code></td>
    <td>Liberty install group</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['install_java']</code></td>
    <td>install_java_flag</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['install_javafp']</code></td>
    <td>install_javafp_flag</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['install_user']</code></td>
    <td>Liberty install user</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['java_version']</code></td>
    <td>java version</td>
    <td><code>8.0</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server01']['feature']</code></td>
    <td>liberty server01 feature</td>
    <td><code>webProfile-7.0 adminCenter-1.0</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server01']['httpport']</code></td>
    <td>liberty server01 httpport</td>
    <td><code>9080</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server01']['httpsport']</code></td>
    <td>liberty server01 httpsport</td>
    <td><code>9443</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server01']['jvm_params']</code></td>
    <td>liberty server01 jvm_params</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server01']['keystore_id']</code></td>
    <td>liberty server01 keystore_id</td>
    <td><code>defaultKeyStore</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server01']['keystore_password']</code></td>
    <td>liberty server01 keystore_password</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server01']['name']</code></td>
    <td>liberty server name</td>
    <td><code>defaultServer</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server01']['timeout']</code></td>
    <td>liberty server01 timeout</td>
    <td><code>20</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server01']['users']['admin_user']['name']</code></td>
    <td>liberty server01 admin_user name</td>
    <td><code>admin</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server01']['users']['admin_user']['password']</code></td>
    <td>liberty server01 admin_user password</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['liberty_servers']['server01']['users']['admin_user']['role']</code></td>
    <td>liberty server01 admin_user role</td>
    <td><code>admin</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['common_ibm_sdk_v71']['enable']</code></td>
    <td>flag for installing java common_ibm_sdk_v71</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['common_ibm_sdk_v71']['feature']</code></td>
    <td>feature name for java common_ibm_sdk_v71</td>
    <td><code>com.ibm.sdk.71</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['common_ibm_sdk_v71']['offering_id']</code></td>
    <td>offering _id for java common_ibm_sdk_v71</td>
    <td><code>com.ibm.java.jdk.v71</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['common_ibm_sdk_v8']['enable']</code></td>
    <td>flag for installing java common_ibm_sdk_v8</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['common_ibm_sdk_v8']['feature']</code></td>
    <td>feature name for java common_ibm_sdk_v8</td>
    <td><code>com.ibm.sdk.8</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['common_ibm_sdk_v8']['offering_id']</code></td>
    <td>offering _id for java common_ibm_sdk_v8</td>
    <td><code>com.ibm.java.jdk.v8</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['websphere_sdk_v70']['enable']</code></td>
    <td>flag for installing java websphere_sdk_v70</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['websphere_sdk_v70']['feature']</code></td>
    <td>feature name for java websphere_sdk_v70</td>
    <td><code>com.ibm.sdk.7</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['websphere_sdk_v70']['offering_id']</code></td>
    <td>offering _id for java websphere_sdk_v70</td>
    <td><code>com.ibm.websphere.liberty.IBMJAVA.v70</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['websphere_sdk_v80']['enable']</code></td>
    <td>flag for installing java websphere_sdk_v80</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['websphere_sdk_v80']['feature']</code></td>
    <td>feature name for java websphere_sdk_v80</td>
    <td><code>com.ibm.sdk.8</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['sdk']['websphere_sdk_v80']['offering_id']</code></td>
    <td>offering _id for java websphere_sdk_v80</td>
    <td><code>com.ibm.websphere.liberty.IBMJAVA.v80</code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['start_servers']</code></td>
    <td>List of servers to be started</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['stop_servers']</code></td>
    <td>List of servers to be stopped</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['tmp']</code></td>
    <td>Temp directory to be used</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was_liberty']['wlp_user_dir']</code></td>
    <td>Liberty directory for user data</td>
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


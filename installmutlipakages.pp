class multi_package_node {
$multi_pakage=['net-tools','unzip] 
    package {$multi_package:ensure => installed}
}    


node 'stapp03.stratos.xfusioncorp.com'{

  include multi_package_node
}



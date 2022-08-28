class { 'ntp':

  servers => ['server 2.north-america.pool.ntp.org iburst'],                                               

}    

 
class ntpconfig {

  include ntp

}  


node 'stapp02.stratos.xfusioncorp.com' {

  include ntpconfig

}


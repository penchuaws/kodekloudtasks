$public_key = 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCpJKEpYTZGuzLlNDL6T32iPlS/G0douApg89iFlKpQgzjD8O/DNzv62wwcZhsLd3mNfpZOMg0lF8B71YzmognQk4DzDSGi/k3+2OoNowki1bHiyfGxwn/+OZM/qn+SB/aJdiA7xSYdC4DjUFWTpdvCJzQ5eSmFBGSDwLn89l92G1K4Ce+TzvuU0UO+oJ7LSx2fzU+WsAtXjyQxz/PIMl9RIn0L0uKT8IM5Gu3v5RsDCw5VIoY8tBd8fOvCwuoC79qp7Ohyn+YvGYcGGnfBSG/SS9ycHmvAe8AIS5jDfZ6u+Pcowde3y8fk5NjTYLoxoqNxVjkD82Klk2dBT5sX6s25'

class ssh_node1 {

   ssh_authorized_key { 'tony@stapp01':

     ensure => present,

    user   => 'tony',

     type   => 'ssh-rsa',

     key    => $public_key,

   }

 }

 class ssh_node2 {

   ssh_authorized_key { 'steve@stapp02':

     ensure => present,

     user   => 'steve',

     type   => 'ssh-rsa',

     key    => $public_key,

   }

 }

 class ssh_node3 {

   ssh_authorized_key { 'banner@stapp03':

     ensure => present,

     user   => 'banner',

     type   => 'ssh-rsa',

     key    => $public_key,

   }

 }

 node stapp01.stratos.xfusioncorp.com {

   include ssh_node1

 }

 node stapp02.stratos.xfusioncorp.com {

   include ssh_node2

 }

 node stapp03.stratos.xfusioncorp.com {

   include ssh_node3

 }
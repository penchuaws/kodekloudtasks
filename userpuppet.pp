class user_creator{
 user {'mariyam':
  ensure => present,
  uid=>1219,
 }
 }
node 'stapp02.stratos.xfusioncorp.com'{
 include user_creator
}

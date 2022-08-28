class filepermission {
    file{'/opt/dba/media.txt':
      ensure=> present,
      content=>'Welcome to xFusionCorp Industries!',
      mode=>'0744',
    }
}

node 'stapp02.stratos.xfusioncorp.com' {
    
   include filepermission

 }
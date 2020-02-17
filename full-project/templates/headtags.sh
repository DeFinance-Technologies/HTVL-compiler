#!/bin/bash

read -r -d '' headtags <<- EOM
      $(title)
      $meta
      $(metaLink 'viewport' 'width=device-width, initial-scale=1')
      <!--<meta http-equiv="refresh" content="5" >-->
      $(script 'https://code.jquery.com/jquery-3.3.1.slim.min.js')
      $(metaLink '' 'ie=edge' 'X-UA-Compatible')
      $(link 'stylesheet' '')
      $(link stylesheet 'text/css' $(bsCdn '4.3.1'))
      $(script 'https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js')
      $(script 'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js')
      $(script 'https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js')
      $(link '' 'text/css' '#')
      $(link 'stylesheet' 'text/css' 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css')
      $(link 'stylesheet' 'text/css' './shared/main.css')
      $(link 'stylesheet' '' 'https://use.fontawesome.com/releases/v5.2.0/css/all.css' 'sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ' 'anonymous')  
EOM




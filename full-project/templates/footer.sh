#!/bin/bash

read -r -d '' footer <<- EOM
$(comment 'footer Elements')
$(footer 'page-footer font-small special-color-dark pt-4')
  $(div 'container')
    $(ul 'list-unstyled list-inline text-center')
      $(li 'list-inline-item')
        $(a 'btn-floating btn-fb mx-1' 'https://www.facebook.com/nicolus.rottie.9' '' '' '' '' '')
          $(i 'fab fa-facebook-f')
        $_a
      $_li
      $(li 'list-inline-item')
        $(a 'btn-floating btn-fb mx-1' 'https://twitter.com/TheRotich' '' '' '' '' '')
          $(i 'fab fa-twitter')
        $_a
      $_li
      $(li 'list-inline-item')
        $(a 'btn-floating btn-fb mx-1' 'https://scholar.google.fi/citations?user=IJRM18YAAAAJ&hl=en' '' '' '' '' '')
          $(i 'fab fa-google-plus-g')
        $_a
      $_li
      $(li 'list-inline-item')
        $(a 'btn-floating btn-fb mx-1' 'https://scholar.google.fi/citations?user=IJRM18YAAAAJ&hl=en' '' '' '' '' '')
          $(i 'fab fa-google-plus-g')
        $_a
      $_li
      $(li 'list-inline-item')
        $(a 'btn-floating btn-fb mx-1' 'https://linkedin.com/in/rotichtheengineer/' '' '' '' '' '')
          $(i 'fab fa-linkedin-in')
        $_a
      $_li
    $_ul
  $_div
  $(div 'footer-copyright text-center py-3')
    $(p '' '' '' 'margin-bottom: 0;')
      Copyright &copy; <script>document.write(new Date().getFullYear())</script>
    $_p
    $(a '' 'https://jet-pack.netlify.com/' 'https://jet-pack.netlify.com/' '' '' '' '')$_a
  $_div
$_footer
EOM

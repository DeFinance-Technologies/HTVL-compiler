#!/bin/bash
#=========================================================
# declare global variables
#=========================================================
dec="<!DOCTYPE html>" # document type declaration
html="<html lang=\"en\">" # html opening
head="<head>" # head opening
deah="</head>" # head closing
body="<body>" # body opening
dybo="</body>" # body closing
lmth="</html>" # html closing
btn="<button>"
ul="<ul>"
lu="</ul>"
li="<li>"
il="</li>"
form="<form>"
morf="</form>"
div="<div>"
vid="</div>"
nottub="</button>"
van="</nav>"
#=========================================================
# declare local variables
#=========================================================

read -r -d '' meta <<- EOM
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
EOM

read -r -d '' title <<- EOM
    <title> 
      Learn FCSS From the Best 
    </title>
EOM

# Usage: $(btn [option 1 option 2 option 3 option 4]) e.g. $(btn primary submit Delete)
btn () {
  echo "<button class=\"btn btn-$1\" type=\"$2\">$3</button>"
}
# Usage: $(input [option 1 option 2 ..]) e.g. $(input 'form-control mr-sm-2' search Search Search) 
input () {
    echo "<input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">"
}
# Usage: $(span [option]) e.g. $(span navbar-toggler-icon) 
span () {
    echo "<span class=\"$1\"></span>"
}
# usage: $(nav light)
nav () {
    echo "<nav class=\"navbar navbar-$1 bg-$1\">"
}
# usage: $(ul navbar-nav)
ul () {
    echo "<ul class=\"$1\">"
}
# usage: $(div [option 1 option 2]), e.g. $(div form-group mb-2) or $(div form-group row) 
div () {
    echo "<div class=\"$1 $2\">"
}
# usage: $(form form-inline) 
form () {
    echo "<form class=\"$1\">"
}
# usage: $(label [option 1 option 2 option 3]) e.g. $(label staticEmail 'col-sm-2 col-form-label' Email)
label () {
    echo "<label for=\"$1\" class=\"$2\">$3</label>"
}
# usage: $(a [option 1 option 2 ...]) e.g. $(a './index.html' nav-link Home)
a () {
    echo "<a id=\"\" class=\"\" href=\"$1\" class=\"$2\">$3</a>"
}
# usage: $(h [option 1 option 2]) e.g. $(h 1 title)
h () {
    echo "<h$1 id=\"$2\"></h$1>"
}
# Usage: $(li nav-item) 
li () {
    echo "<li class=\"$1\">"
}
# usage: $(nav-a [option 1 option 2]) e.g. $(nav-a home nav-link)
nav-a () {
    echo "<a href=\"./$1.html\" class=\"$2\">${1^}</a>"
}
# Usage: $(footer [option]) e.g. $(footer 'Copyright &copy; footer-date()')
footer () {
    echo "<footer class=\"footer\">$1</footer>"
}
# Usage: $(video [source])
video () {
    echo "<video width=\"320\" height=\"240\" controls><source src=\"$1\" type=\"video/mp4\"></video>"
}
# Usage: $(iframe [source class]) e.g. $(iframe https://giphy.com/embed/3ohzdIuqJoo8QdKlnW giphy-embed)
iframe () {
    echo "<iframe src=\"$1\" width=\"480\" height=\"222\" frameBorder=\"0\" class=\"$2\" allowFullScreen></iframe>"
}
# Usage: $(link [option 1 option 2 option 3]) e.g. $(link stylesheet 'text/css' './assets/main.css')
link () {
    echo "<link rel = \"$1\" type = \"$2\" href = \"$3\"/>"
}
# Usage: $(script [option 1 option 2 option 3]) e.g. $(script './scripts/js/index.js' 'text/javascript')
script () {
    echo "<script src=\"$1\" type=\"$2\"></script>"
}

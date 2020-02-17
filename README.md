# HTVL COMPILER 
Hypertext Variables Language (HTVL) is a project aiming at automating front-end development. We have recently opened up one of our projects for public  contribution and testing, and this page will be used to invite and manage healthy contributions. There have been speculations of whether  front-end will survive automation, since at the core of it is mainly piecing together parts to form a whole of the interface  to which the the user will interact with the back-end functionality of the program.

There have been multitudes of CSS frameworks, content management systems (CMS), among other tools whose aims have been to try  as much as possible to easen front-end preparation. As a growing sofware company, we seem to have identified the flaws that  that have been retarding the process of not only front-end, but also automation of software development in general. 

We have therefore come up with a big picture of the methodology that maps the trajectory in which future software development is likely to follow. We think that failure to begin auto-code generation has been exercebated by the weay we have always looked the tools at hand, as separate entities, rather than making them work together as one thing. By this I mean for instance, there seems to be a close-knit connection between say JavaScript and HTML, and HTML with CSS, both on separate ends. Everty tool be it a new framework or CMS, is either trying to eliminate one, or another, and that has led to a big fail in as far as automating software development is concerned.

The aim of FCSS is to combine CSS frameworks with HTML in a single script file. So the general methodoloy is to supply CSS atributes as variables to this script file, which when executed creates an assembled HTML code, fully loaded with all CSS, and even in some cases JavaScript. We have therefore coined a name for this framework -- Hypertext Variables Language (HTVL)

Essentially there are two files that holds the variables, and this is where we need your contributions. A typical project directory looks like the one shown below:
# ![](https://imgur.com/a/pwFtxru)

Every bootstrap compoenent and sub-component can be broken down into a simple function that accepts atributes as inputs. 
Check this out: Let's say I want a single shell script variable that will output a primary button as follows:

```
<button class="btn btn-primary" type="submit" onClick="Delete"></button>
```

The function inside htvl script will look like this:

```
$(btn primary submit Delete)
```
Even though the above code might look longer than the original line, bear in mind the extent of reusability, and it will virutally remain the same as long as the same version of bootstrap is valid. You can do the same practically for every component, and all those variables will be stored as a library on our github profile. The directory named variables in the above file tree contains thos that we have already implemented and tested. For instance you can already head to the repository and download the two files named "global.sh" and "local.sh" import them to your script below -- named "index.sh", that is to say they must live in the same folder. 

If you do this you will realize the real power of this methodology from this example. Without forgetting, you will still need a minimal css code for this produce good results. The css code is appended below this document.
# Usage:
All you need to do is to create a custom script file with extension htvl and run the compiler withing the root folder of your project. The compiler will create a sub-folder called public and compile your files onto it. You will then find all htvl files with similar names, but now in standard HTML format. Here is an example of the script file:

```
$DOCTYPE_htvl
$htvl
$(comment 'headtags')
$head
  $headtags
  $(link stylesheet 'text/css' $(bsCdn '4.3.1'))
  $(link stylesheet 'text/css' '../assets/proto.css')
$_head
$(comment 'end headtags')
$body
$(comment 'navbar')
$(nav 'navbar navbar-expand-md bg-dark navbar-dark')
  $(a 'navbar-brand' './' '' '' '' '' '')$(img '../assets/img/htvl-logo.png')$_a
  $(btn 'navbar-toggler' 'button' '' '' 'collapse' '#collapsibleNavbar' '')
  $(span 'navbar-toggler-icon')
  $_btn
  $(div 'collapse navbar-collapse' 'collapsibleNavbar')
    $(ul 'navbar-nav')
      ${nav0[@]} 
    $_ul
    $(form 'form-inline ml-auto' '' '' 'margin-bottom: 0;')
      $(input 'form-control mr-sm-2' 'search' '' '' 'Search')
      $(btn 'btn btn-primary' 'submit' 'SEARCH' '' '' '' 'margin-bottom: 0;')
      $(a 'btn btn-primary' './login.html' 'Login' '' '' 'true' '')$_a$_btn
    $_form
  $_div
$_nav
$(comment 'end navbar')



$(comment 'custom application start')
$(div 'jumbotron')
$(div '' 'hero')
  $(div 'inner')
    $(div 'right')
      $(h 1 '' 'framework' 'JetPack| A Linux Web Framework<br>')
      $(p '' 'headings' '' '')
        $(a 'button white' 'https://jet-pack.netlify.com/' '' '' '' '' 'GET STARTED')$_a
        $(a 'button gray has-icon' 'https://github.com/moinonin/jetpack-framework' 'GITHUB' '' '' '' '')
        $(img '../assets/img/github.png')$_a
      $_p
    $_div
  $_div
$_div

$(div '' 'special-sponsor')
  $(h 3 '' '' 'Official Sponsor')
  $(a '' 'https://inzpirogaming.com/' '' '' '_blank' '' '')
    $(img './assets/img/inzpiro_web.png' 'inzpirogaming Logo' 'width:160px; height: 80px;')
  $_a
  $br
  $(span '')Our software creates yours. Check our $_span $(a '' '../assets/guide.pdf' 'guide' '' '' '' '')$_a for reference.
$_div
$(h 1 '' 'jetpack' 'WHY JETPACK?')

$(div 'features')
  $(div 'feature')
    $(h 2 '' '' 'Easy-Peasy')
    $(p '' '' 'If you already know some HTML, CSS, and JavaScript, combined with a styling tool such as bootstrap, this tool will get you started in no time!')$_p
  $_div
  $(div 'feature')
    $(h 2 '' '' 'Incredibly fast')
    $(p '' 'content' 'The framework takes up only less than 0.3 mB installed disk capacity. It is therefore cheap computationally, with minimal need for   configuration.')$_p
  $_div
  $(div 'feature')
    $(h 2 '' '' 'High performance')
    $(p '' 'content' 'The framework takes up only less than 0.3 mB installed disk capacity. It is therefore cheap computationally, with minimal need for   configuration.')$_p
  $_div
$_div

$(div 'container')
  $(div 'row')
    $(div 'col text-center')
      $(a 'button whithe' 'https://www.patreon.com/join/nkrtech/checkout' 'SUPPORT' '' '' '' '')$_a
    $_div
  $_div
$_div
$(comment 'custom application end')   
$_div
$(comment 'Footer Elements')
$(div 'footers')
  $footer
$_div
$(comment 'End footer Elements')
  $_body
$_htvl

```
Here is the minimal custom CSS code you need:

```
body {
  background-color: white;
}
.title-main {
  color: yellow;
  text-align: center;
  background-color: black;
}
#title-main{
  color: yellow;
}

#special-sponsor{
text-align: center;
padding-bottom: 10px;
}

#headings{
text-align: center;
padding: 0px 100px 0px;
}

.feature{
padding: 0.5rem;
}

#framework{
text-align: center;
padding-bottom: 10px;
padding-top: 10px;
}

.card {
  margin: auto;
  padding-left: 3.5rem;
  padding-right: 3.5rem;
  width: 100%;
  height: 100%;
  align-content: center;
}

.desc {
  text-align: center;
}
#closeBtn {
  padding-right: 3.5rem;
  display: inline;
  text-align: right;
}
.thread {
  background-color: black;
  color: yellow;
}
.btn-primary {
  background-color: black;
  color: yellow;
  border-color: black;
}
.in-brief{
  margin-left: 0;
}
.table table-bordered td {
      text-align: center; 
    vertical-align: middle;
}
.page-footer font-small special-color-dark pt-4{
  background-color: whitesmoke;
  color:  #4885ed;
}

a#nav-links {
  color: aliceblue;
}
input {
  margin-bottom: 0;
}
.footer-copyright.text-center.py-3 {
  color: #4885ed;
  background-color: #343a40;
  position: fixed;
  bottom: 0;
  width: 100%;
}
label{
  font-weight: bold;
}

.features {
    display: flex;
    padding-bottom: 0;
    padding-top: 40px;
    padding-left: 200px;
    padding-right: 200px;
}

.h2 {
  width: 100%;
  height: 100%;
  background-color: #E0FFF4;
}
.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
    margin-bottom: 0;
    font-weight: 500;
    line-height: 1.2;
}

p {
    margin-top: 0;
    margin-bottom: 0;
    word-spacing: 1.5px;
}

#jetpack{
text-align: center;
margin-bottom: 0;
}
.pb-3, .py-3 {
    padding-bottom: 3.1rem!important;
}
.pt-3, .py-3 {
    padding-top: 3.1rem!important;
}

.jumbotron{
  padding-top: 0;
  padding-bottom: 6rem;
}

@media screen and (max-width: 768px) {
  body {
    width: 100%;
  }
  input {
    margin-bottom: 20px;
  }
  .footer-copyright.text-center.py-3 {
    color: #4885ed;
    background-color: #343a40;
    position: relative;
    bottom: 0;
    width: 100%;
  }
  .card{
    padding-left: 1.5rem;
    padding-right: 1.5rem;
    margin-left: 1.5rem;
  }
.features {
   -webkit-box-orient: vertical;
   -webkit-box-direction: normal;
   flex-direction: column;
   padding-left: 0.1rem;
   padding-right: 0;
  }
 .jumbotron{
  margin-bottom: 0;
 }
}
```

You should end-up with neat application like this [hosted here](http://htvl-compiler.surge.sh/) make sure to have all the templates on your folder before running the compiler like so ./htvl-compiler.sh under the project root name where the folder full-project once your download.

# Current Progress  
As at now you can clone the project and use it as much as you want. We will appreciate your feedback on you HTVL compiler.  

--- THE END ---


Nicolus Rotich,  
Project Proponent & Co-Founder,  
Inzpiro Gaming  


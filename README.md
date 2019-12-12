# HTVL COMPILER 
Hypertext Variables Language (HTVL) is a project aiming at automating front-end development. We have recently opened up one of our projects for public  contribution and testing, and this page will be used to invite and manage healthy contributions. There have been speculations of whether  front-end will survive automation, since at the core of it is mainly piecing together parts to form a whole of the interface  to which the the user will interact with the back-end functionality of the program.

There have been multitudes of CSS frameworks, content management systems (CMS), among other tools whose aims have been to try  as much as possible to easen front-end preparation. As a growing sofware company, we seem to have identified the flaws that  that have been retarding the process of not only front-end, but also automation of software development in general. 

We have therefore come up with a big picture of the methodology that maps the trajectory in which future software development is likely to follow. We think that failure to begin auto-code generation has been exercebated by the weay we have always looked the tools at hand, as separate entities, rather than making them work together as one thing. By this I mean for instance, there seems to be a close-knit connection between say JavaScript and HTML, and HTML with CSS, both on separate ends. Everty tool be it a new framework or CMS, is either trying to eliminate one, or another, and that has led to a big fail in as far as automating software development is concerned.

The aim of FCSS is to combine CSS frameworks with HTML in a single script file. So the general methodoloy is to supply CSS atributes as variables to this script file, which when executed creates an assembled HTML code, fully loaded with all CSS, and even in some cases JavaScript. We have therefore coined a name for this framework -- Hypertext Variables Language (HTVL)

Essentially there are two files that holds the variables, and this is where we need your contributions. A typical project directory looks like the one shown below:
# ![](https://i.imgur.com/EjHj9t3.png)

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
$htvl
$html
$head
    $meta
    $(link stylesheet 'text/css' $(bsCdn '4.3.1'))
    $('Learn FCSS From the Best')
$_head
$body
    $(nav dark)
      $(a '#' navbar-brand FCSS)
      $(form form-inline)
        $(input 'form-control mr-sm-2' search)
        $(btn 'outline-success my-2 my-sm-0' submit Search)
      $_form
    $(nav '' '')
    $(div form-group row)$vid
      $(h 1 app)
      $(iframe $('' '' 'https://giphy.com/embed/3ohzdIuqJoo8QdKlnW' 'giphy-embed)') 
      $(footer 'Copyright &copy; Inzpiro Gaming <script>document.write(getDates())</script>')
$_body
$(scripts '')
$_html

```
Here is the minimal custom CSS code you need:

```
h1{
    background-color: #0b0b0b;
    color: yellow;
    width: 100%;
    text-align: center;
}
li {
    list-style: none;
    display: in-line;
}

.nav-link{
    color: aliceblue;
}
.navbar {
    justify-content: between
}
.footer {
  position: fixed;
  bottom: 0;
  text-align: center;
  width: 100%;
  height: 60px;
  padding-top: 25px;
  background-color: #343a40;
  color: aliceblue;
}
.giphy-embed{
    margin-left: 33%;
}
.body{
    height: auto;
}

@media screen and (max-width: 900px) {
    .giphy-embed{
    margin-left: 5px;
    padding: 0.5rem;
    overflow-x: hidden;
    margin-right: 5px;
    width: 100%;
    }
    .footer {
    position: fixed;
    padding-top: 15px;
    }
   .body{
    min-height: 515px;
   }
}
```

You should end-up with the following [neat application](http://fcss.surge.sh/) 

# Current Progress  
As at now you can clone the project and use it as much as you want. We will appreciate your feedback on you HTVL compiler.  

--- THE END ---


Nicolus Rotich,  
Project Proponent & Co-Founder,  
Inzpiro Gaming  


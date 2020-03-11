# HTVL COMPILER 
Hypertext Variables Language (HTVL) is a project aiming at automating and easy templating of front-end development. We have recently opened up one of our projects for public  contribution and testing, and this page will be used to invite and manage healthy contributions. There have been speculations of whether  front-end will survive automation, since at the core of it is mainly piecing together parts to form a whole of the interface  to which the the user will interact with the back-end functionality of the program.

There have been multitudes of CSS frameworks, content management systems (CMS), among other tools whose aims have been to try  as much as possible to easen front-end preparation. As a growing sofware company, we seem to have identified the flaws that  that have been retarding the process of not only front-end, but also automation of software development in general. 

We have therefore come up with a big picture of the methodology that maps the trajectory in which future software development is likely to follow. We think that failure to begin auto-code generation has been exercebated by the way we have always looked the tools at hand, as separate entities, rather than making them work together as one thing. By this I mean for instance, there seems to be a close-knit connection between say JavaScript and HTML, and HTML with CSS, both on separate ends. Every tool be it a new framework or CMS, is either trying to eliminate one, or another, and that has led to how we carry out our software development in as far as automation is a concern.  

The aim of FCSS is to combine CSS frameworks with HTML in a single script file. So the general methodoloy is to supply CSS atributes as variables to this script file, which when executed creates an assembled HTML code, fully loaded with all CSS, and even in some cases JavaScript. We have therefore coined a name for this framework -- Hypertext Variables Language (HTVL)

Essentially there are two files that holds the variables, and this is where we need your contributions. A typical project directory looks like the one shown below:
# ![](https://imgur.com/a/pwFtxru)

Every bootstrap component and sub-component can be broken down into a simple function that accepts atributes as inputs. 
Check this out: Let's say I want a single shell script variable that will output a primary button as follows:

```
<button class="btn btn-primary" type="submit" onClick="Delete"></button>
```

The function inside htvl script will look like this:

```
$(btn 'btn-primary submit' '' 'Delete')
```
First off, we see that the above code is shorter than the original line, bear in mind the extent of reusability, and it will virutally remain the same as long as the same version of bootstrap is valid. You can do the same practically for every component, and all those variables will be stored as a library on our github profile. The directory named full project contains those that we have already implemented and tested. For instance you can already head to the repository and download the two files named "htvl-compiler.sh" and the directory "assets" import them to your project root folder and execute the shell script.  

If you do this you will realize the real power of this methodology from this example. Without forgetting, you will still need a minimal css code for this produce good results. The css code is included in the assets directory for this example, but you will need to write your own together with your htvl files. 
# Usage:
All you need to do is to create a custom script file with extension htvl and run the compiler withing the root folder of your project. The compiler will create a sub-folder called public and compile your files onto it. You will then find all htvl files with similar names, but now in standard HTML format. Here is an example of the script file for a jumbotron:

```
$(comment 'Jumbotron example')
$(div 'container text-center' '' '')
  $(div 'jumbotron')
    $(h 1 '' '' 'Medium')
    $(p '' '' 'I write articles on' 'margin-top: 50px')$(img 'https://cdn4.iconfinder.com/data/icons/social-media-2210/24/Medium-512.png' 'Medium icon' 'heig$
  $_div
$_div
$(comment 'End Jumbotron')

```
You should end-up with neat application like this [hosted here](http://bootstrap-htvl.surge.sh/jumbotron.html) make sure to have all the templates on your folder before running the compiler like so ./htvl-compiler.sh under the project root name where the folder full-project once your download.

# Current Progress  
As at now you can clone the project and use it as much as you want. We will appreciate your feedback on you HTVL compiler.  

--- THE END ---


Nicolus Rotich,  
Project Proponent & Co-Founder,  
Inzpiro Gaming  


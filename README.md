# Python Check + Start Local Server

### Checks for python and runs local server (Widows)

Installation
------------
On a windows machine, save the code as a .bat file. Save and run.


Detailed Explaination
-----------
How does it work? 

* Checks to see if you have Python installed at C:\Python34

* If you do not have Python installed at C:\Python34, you get an error message.

* If Python is installed, it checks to see if user has a folder named 'sites' in the Python directory.

  * If there is not 'sites' directory, one is created with a blank index.html inside.

* A local server is created at http://localhost:1337

* Your default Internet Browser will then open to: http://localhost:1337/sites

* Your local server will remain as long as you keep the command line window open.

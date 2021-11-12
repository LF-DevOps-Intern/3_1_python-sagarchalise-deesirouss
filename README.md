Create a CLI app to pull data from web and put it in file.
### 1. Bash or python wrapper to initiate virtualenv in python with python version and install a package activating it.
	* requests package
        * take commands for python script
  **You can use python if you like.**
#### Answer: Created python_virtualenv.sh script file to check pyhton version and install pip, python3.8-venv if not installed
[python_virtualenv.sh file]()

### 2. using requests create a CLI app to pull data from web and save to file.
	* --url STRING 
	* --http_server flag
    - Using subprocess, run "http.server" if --http_server flag is used.
#### Answer: the python file to pull data from web is invoked form main script file python_virtualenv.sh which parses the content of web and saved the url, images and content in current directory.      
[web.py file]()

### Note
  - Each student should have folder in their name where they have their task
  #### I have created virtualEnv and download project folder using my name Bibek
[Bibek VirtualEnv]()
[Bibek Downloaded folder]()
### [stepwise explanation with ScreenShots]()

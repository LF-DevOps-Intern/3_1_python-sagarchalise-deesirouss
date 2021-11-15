Create a CLI app to pull data from web and put it in file.
### 1. Bash or python wrapper to initiate virtualenv in python with python version and install a package activating it.
	* requests package
        * take commands for python script
  **You can use python if you like.**
#### Answer: Created python_virtualenv.sh script file to check pyhton version and install pip, python3.8-venv if not installed
[python_virtualenv.sh file](https://github.com/LF-DevOps-Intern/3_1_python-sagarchalise-deesirouss/blob/main/leapfrog/python_virtualenv.sh)

### 2. using requests create a CLI app to pull data from web and save to file.
	* --url STRING 
	* --http_server flag
    - Using subprocess, run "http.server" if --http_server flag is used.
#### Answer: the python file to pull data from web is invoked form main script file python_virtualenv.sh which parses the content of web and saved the url, images and content in current directory.      
[web.py file](https://github.com/LF-DevOps-Intern/3_1_python-sagarchalise-deesirouss/blob/main/leapfrog/web.py)

### Note
  - Each student should have folder in their name where they have their task
  #### I have created virtualEnv and download project folder using my name Bibek
[Bibek VirtualEnv](https://github.com/LF-DevOps-Intern/3_1_python-sagarchalise-deesirouss/tree/main/leapfrog/bibek)
[Bibek Downloaded folder](https://github.com/LF-DevOps-Intern/3_1_python-sagarchalise-deesirouss/tree/main/leapfrog/bibek)
### [stepwise explanation with ScreenShots](https://github.com/LF-DevOps-Intern/3_1_python-sagarchalise-deesirouss/blob/main/bash%20wrapper%20and%20python%20libraries.pdf)

#! /bin/bash

#giving sudo privilege to install packege is not present 
become=yes

#I assume python 3 already comes with all linux distributions
echo "python version in your system"
python3 --version

#checking if pyhton3.8-venv is  installed using dpkg
if [ $(dpkg-query -W -f='${Status}' python3.8-venv 2>/dev/null | grep -c "ok installed") -eq 0 ];

then
  echo "python3.8-venv is not installed"
  echo "installing python3.8-venv"
  apt install -y python3.8-venv

fi

echo "python3.8-venv is present"

#checking for pip3 in the system
function checkpip(){
  pip3 --version
}

if ! checkpip
then
    echo "we need pip3 to install request package, installing pip3..."
    apt install python3-pip

fi

#creating virtualenv 
read -p 'Enter VirtualEnv Dir name you want to create: ' dir

if [ -d "$dir" ]
  then
  echo "Directory exist"

else

  python3 -m venv $dir
  echo "Virtual Env Directory created"

  source $dir/bin/activate
  echo "source $dir/bin activated "

  #installing requests(for parsing content of web) and pywebcopy(to copy contents of web) package with pip3
  pip install -r packages.txt

fi


function argumentParser(){
    unset url
    ARGS=""
    
    VALID_ARGS=$(getopt -o u:,s --long url:,http_server -- "$@")
    if [[ $? -ne 0 ]]; then
        exit 1;
    fi
    
    eval set -- "$VALID_ARGS"
    while [ : ]; do
        case "$1" in
            -u | --url)
                ARGS="$ARGS $1 $2"
                url=$1
                shift 2
            ;;
            -s | --http_server)
                ARGS="$ARGS $1"
                shift
            ;;
            --) shift;
                break
            ;;
        esac
    done
    
    # exit if --url flag missing
    : ${url:?Missing --url}
    
    # return
    echo $ARGS
}

#defining function mainscript to call web.py from current directory
function mainScript(){
    
    # run python and pass args
    python ./web.py $@
}

#defining web fuction to assign FLAS using arument parser and sending  it to mainscript web.py
function web(){
    FLAGS=$(argumentParser $@)
    echo $FLAGS
    mainScript $FLAGS
}

#calling function web with url and --http_server arguments
#we need to give --url and --http_server to execute this script
web $@
python -m http.server

# Change directory and ls
cdl()    {
  cd "$@";
  ls -al;
}

#If you pass no arguments, it just goes up one directory.
#If you pass a numeric argument it will go up that number of directories.
#If you pass a string argument, it will look for a parent directory with that name and go up to it.
up()
{
    dir=""
    if [ -z "$1" ]; then
        dir=..
    elif [[ $1 =~ ^[0-9]+$ ]]; then
        x=0
        while [ $x -lt ${1:-1} ]; do
            dir=${dir}../
            x=$(($x+1))
        done
    else
        dir=${PWD%/$1/*}/$1
    fi
    cd "$dir";
}


#!/usr/bin/bash

#check if file exists
if [[ -f $1 ]]; then #-f or -eflag is used to check wherther the file eists or not
    echo "File  $1 exists and it's a regular file"
else
    echo "File $1 doesn't exist"   
fi

#checks for read permision
if [[ -r $1 ]]; then #-f or -eflag is used to check wherther the file eists or not
    echo "File  $1 has read permissions"
else
    echo "File $1 doesn't have read permission"   
fi

#checks for write permision
if [[ -r $1 ]]; then #-f or -eflag is used to check wherther the file eists or not
    echo "File  $1 has write permissions"
else
    echo "File $1 doesn't have write permission"   
fi

#checks for execute permision
if [[ -x $1 ]]; then #-f or -eflag is used to check wherther the file eists or not
    echo "File  $1 has excecute permissions"
else
    echo "File $1 doesn't have execute permission"   
fi

#check if its a block special file (images)
if [[ -b $1 ]]; then  
    echo "$1 is a block special file (other files)"
fi

#check if its a directory
if [[ -d $1 ]]; then
    echo "Directory $1 exists"
else
    echo "Directory $1 doesn't exist"
    
fi
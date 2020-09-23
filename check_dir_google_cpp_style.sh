#!/bin/bash -e                                                                                                                                                                                      
for f in *; do                                                                                                                                                                                      
  if [ -f $f ]                                                                                                                                                                                      
  then                                                                                                                                                                                              
    echo $f                                                                                                                                                                                         
    clang-format --sort-includes --style=Google $f > formated                                                                                                                                       
    diff formated $f > tmp                                                                                                                                                                          
    echo "$(<tmp)"                                                                                                                                                                                  
    if [-s formated]                                                                                                                                                                                
    then                                                                                                                                                                                            
      echo $f                                                                                                                                                                                       
      cat formated >> result                                                                                                                                                                        
    fi                                                                                                                                                                                              
  fi                                                                                                                                                                                                
done                                                                                                                                                                                                
rm formated                                                                                                                                                                                         
cat result

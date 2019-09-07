#!/usr/local/bin/bash

function server () {
  while true
  do
    message_arr=()
    check=true
    cat file1
    while $check
    do
      read line
      cat file1 - > $line
      message_arr+=($line)
      if [[ "${#line}" -le 1 ]]
      then
        check=false
      fi
    done
    method=${message_arr[0]}
    path=${message_arr[1]}
    file_length=wc -c file1
    if [[ $method = 'GET' ]]
    then
      if [[ -f "./www/$path" ]]
      then
        echo -ne "HTTP/1.1 200 OK\r\n\r\nContent-Type: text/html; charset=utf-8\r\nContent-Length: $file_length\r\n"; cat "./www/$path"
      else
        echo 'HTTP/1.1 404 Not Found\r\nContent-Length: 0\r\n\r\n'
      fi
    else
      echo -ne 'HTTP/1.1 400 Bad Request\r\nContent-Length: 0\r\n\r\n'
    fi
  done
}

coproc SERVER_PROCESS { server; }

nc -lkv 2345 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]}

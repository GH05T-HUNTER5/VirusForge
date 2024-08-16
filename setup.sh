#!/usr/bin/bash

function root_check()
{
    if [[ $(id -u) -ne 0 ]]; then
        echo -e "${white} [${red}+${white}] ${red}Required root access"
        exit
    fi
}

function setup_linux()
{
    root_check
    clear
    mv virusforge /usr/bin/
    chmod +x /usr/bin/virusforge
}

setup_linux

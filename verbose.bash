#!/bin/bash
VERBOSE="y"

function print_info() {
    printf "\e[1m" ; printf " $@" ; printf "\e[0m\n"
}
function print_verb() {
    printf "\e[32m" ; printf " $@" ; printf "\e[0m\n"
}
function print_warn() {
    printf "\e[33m" ; printf " $@" ; printf "\e[0m\n"
}
function print_err()  {
    printf "\e[31m" ; printf " $@" ; printf "\e[0m\n"
}

function print_action()  {
    printf "\e[1m" ; printf "> $@" ; printf "\e[0m\n"
}

if [ ! "$VERBOSE" == "y" ];then
        function print_info() {
            printf ""
        }
        function print_verb() {
            printf ""
        }
        function print_warn() {
            printf ""
        }
        function print_err()  {
            printf ""
        }
fi

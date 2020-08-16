#!/bin/bash

[ -f verbose.bash ] && source verbose.bash

DEST=$HOME

# Install files under user home directory
for element in $(find src) ; do
  if [ ! "$element" = "src" ];then
    if [ -f $element ];then
        filename=${element#*/}
        print_verb "src            : $(pwd)/$element"
        print_verb "dest           : $DEST/.$filename"
        print_verb "dest link name : $(readlink -f $DEST/.$filename)"
        if [ -f $DEST/.$filename ];then
                        diff $(pwd)/$element $DEST/.$filename >/dev/null
            if [ $? -eq 0 ];then
                print_warn "$filename already exist and are the same"
                if [ ! "$(readlink -f $DEST/.$filename)" == "$(pwd)/$element" ];then
                    print_err "config file $elelment link to an other source"
                    print_info "change link"
                    print_action "ln -sf $(pwd)/$element $DEST/.$filename"
                    ln -sf $(pwd)/$element $DEST/.$filename
                fi
            else
                print_warn "$filename content diverge"
                print_info "updating link"
                print_action "ln -sf $(pwd)/$element $DEST/.$filename"
                ln -sf $(pwd)/$element $DEST/.$filename
            fi
    else
        print_warn "$element not found"
        print_info "create link $(pwd)/$element $DEST/.$filename"
        ln -s $(pwd)/$element $DEST/.$filename
    fi

    #ln -sf $(pwd)/$element $DEST/.$filename
    elif [ -d $element ];then
        dirname=$(echo $element | cut -c5-)
        print_verb "src  : $(pwd)/$element"
        print_verb "dest : $DEST/.$dirname"
        if [ -d "$DEST/.$dirname" ];then
            print_warn "$element already exist"
        else
            print_info "create dir $element"
            print_action "mkdir -p $DEST/.$dirname"
            mkdir -p $DEST/.$dirname
        fi
    else
        print_err "This should never be call"
        file $(pwd)/$element
    fi
  fi
  print_info "==================================================="
done

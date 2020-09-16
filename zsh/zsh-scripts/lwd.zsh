show_help()
{    
    echo "Usage: $1 [OPTIONS]"
    echo "  -h/--help"
    echo "  -l/--list"
    echo "  --clear"
    echo "  [id]"
    echo "  [id] -d/--delete"
    echo "  [id] -s/--store [custom_dir]"
}

if [[ ( $# -gt 0 && ( $1 = "--help" || $1 = "-h" ) ) ]]
then
    show_help $0
    return 0
fi

# clear everything
if [[ ( $# -gt 0 && $1 = "--clear" ) ]]
then
    echo > ~/.lwd-store
    echo "clearing lwd-store"
    return 0
fi

# load lookup table
unset lookup
declare -A lookup

while read -r key value
do
    lookup[$key]=$value
done < ~/.lwd-store


# load current list
if [[ ( $# -gt 0 && ( $1 = "--list" || $1 = "-l" ) ) ]]
then
    for key in "${(@k)lookup}"
    do
        echo "$key ${lookup[$key]}"
    done
    return 0
fi

unset potential_args
unset arg0
unset arg1

declare -a potential_args=(-s --store -d --delete)

# default key
lwd_key="1"

# potential command check
if [[ $# -gt 0 ]]
then
    if (( potential_args[(Ie)$1] )) 
    then
        arg0="$1"
        arg1="$2"
    else
        lwd_key="$1"
        arg0="$2"
        arg1="$3"
    fi
fi

# save key value
if [[ ( "$arg0" = "-s" || "$arg0" = "--store") ]]
then
    # store lwd
    if [[ $arg1 != "" ]]
    then
        val=$arg1
    else
        val=$(pwd)
    fi
    echo "store $lwd_key=$val"
    lookup[$lwd_key]="$val"

    for key in "${(@k)lookup}"
    do
        echo "$key ${lookup[$key]}"
    done > ~/.lwd-store
    return 0
fi

# delete key value
if [[ ( "$arg0" = "-d" || "$arg0" = "--delete") ]]
then
    echo "del $lwd_key=${lookup[$lwd_key]}"
    for key in "${(@k)lookup}"
    do
        if [[ $key != $lwd_key ]]
        then
            echo "$key ${lookup[$key]}"
        fi 
    done > ~/.lwd-store
    return 0
fi

# cd lwd
if [[ $# -lt 2 ]]
then
    # cd directory
    if [ -z $lookup[$lwd_key] ]
    then
        echo "$lwd_key is unset"
    else
        cd $lookup[$lwd_key]
    fi
    return 0
fi

# help 
show_help $0
return 1

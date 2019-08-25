# For changing sensitive configuration files (prefixed with sensitive-)
config-sensitive()
{
    filepath="$SHCONFIG_PATH/sensitive-$1.zsh"

    if [[ ! -f $filepath ]]; then
        echo "config-sensitive: The sensitive configuration file requested does not exist."
        return 1
    fi

    $EDITOR $filepath
}

# For info about EXIT STATUS: man man

logstore()
{
    target_path="$SHSTORAGE_PATH/all.log"
    if [[ $2 ]]; then
        target_path="$SHSTORAGE_PATH/$2"
    fi

    echo "$1" >> $target_path
}

loglist()
{
    target_path="$SHSTORAGE_PATH/all.log"
    if [[ $1 ]]; then
        target_path="$SHSTORAGE_PATH/$1"
    fi

    cat $target_path
}

# File search functions
f()
{
    find . -iname "*$1*" ${@:2}
}

r()
{
    grep "$1" ${@:2} -R .
}

# Create a folder and move into it in one command
mkcd()
{
    mkdir -p "$@" && cd "$_";
}

# Find out number of lines per file and order them
# References:
# https://stackoverflow.com/questions/1358540/how-to-count-all-the-lines-of-code-in-a-directory-recursively
# https://unix.stackexchange.com/questions/260630/how-do-you-list-number-of-lines-of-every-file-in-a-directory-in-human-readable-f
fcount()
{
    if [[ ! $1 ]]; then
        echo "fcount: Please provide the folder path"
        return 1
    fi

    extension="*"
    if [[ $2 ]]; then
        extension="$2"
    fi

    find "$1" -name "*.${extension}" | xargs wc -l | sort
}

# Dictionaries
dict()
{
    if [[ ! $1 ]]; then
        echo "dict: Please provide at least one english word"
        return 1
    fi

    logstore "$1" dict.log
    open https://en.oxforddictionaries.com/definition/$1 &
}

thesau()
{
    if [[ ! $1 ]]; then
        echo "thesau: Please provide at least one english word"
        return 1
    fi

    logstore "$1" thesau.log
    open https://www.thesaurus.com/browse/$1 &
}

gpdict()
{
    if [[ ! $1 ]]; then
        echo "gdict: Please provide at least one german or portuguese word"
        return 1
    fi

    logstore "$1" gpdict.log
    open https://dict.leo.org/alemão-português/$1 &
}

# Executes a command multiple times
loopexec()
{
    TIMES="$1"
    shift; COMMAND="$@"

    for ((n=1; n <= $TIMES; n++))
    do
        ${COMMAND}
    done
}

# Executes a command multiple times using GNU Parallel (more performatic)
#loopexecp()
#{
#    TIMES="$1"
#    shift; COMMAND="$@"
#
#    parallel -N0 -j12 ${COMMAND} ::: {1..${TIMES}}
#}


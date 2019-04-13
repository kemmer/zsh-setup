# For info about EXIT STATUS: man man

function logstore()
{
    target_path="$SHSTORAGE_PATH/all.log"
    if [[ $2 ]]; then
        target_path="$SHSTORAGE_PATH/$2"
    fi

    echo "$1" >> $target_path
}

# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Dictionaries
function dict()
{
    if [[ ! $1 ]]; then
        echo "dict: Please provide at least one english word"
        return 1
    fi

    logstore "$1" dict.log
    xdg-open https://en.oxforddictionaries.com/definition/$1
}

function thesau()
{
    if [[ ! $1 ]]; then
        echo "thesau: Please provide at least one english word"
        return 1
    fi

    logstore "$1" thesau.log
    xdg-open https://www.thesaurus.com/browse/$1
}

function gpdict()
{
    if [[ ! $1 ]]; then
        echo "gdict: Please provide at least one german or portuguese"
        return 1
    fi

    logstore "$1" gpdict.log
    xdg-open https://dict.leo.org/alemão-português/$1
}

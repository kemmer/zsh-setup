# For info about EXIT STATUS: man man

function logstore()
{
    target_path="$SHSTORAGE_PATH/all.log"
    if [[ $2 ]]; then
        target_path="$SHSTORAGE_PATH/$2"
    fi

    echo "$1" >> $target_path
}

function loglist()
{
    target_path="$SHSTORAGE_PATH/all.log"
    if [[ $1 ]]; then
        target_path="$SHSTORAGE_PATH/$1"
    fi

    cat $target_path
}

# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Find out number of lines per file and order them
# References:
# https://stackoverflow.com/questions/1358540/how-to-count-all-the-lines-of-code-in-a-directory-recursively
# https://unix.stackexchange.com/questions/260630/how-do-you-list-number-of-lines-of-every-file-in-a-directory-in-human-readable-f
function fcount()
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
function dict()
{
    if [[ ! $1 ]]; then
        echo "dict: Please provide at least one english word"
        return 1
    fi

    logstore "$1" dict.log
    xdg-open https://en.oxforddictionaries.com/definition/$1 &
}

function thesau()
{
    if [[ ! $1 ]]; then
        echo "thesau: Please provide at least one english word"
        return 1
    fi

    logstore "$1" thesau.log
    xdg-open https://www.thesaurus.com/browse/$1 &
}

function gpdict()
{
    if [[ ! $1 ]]; then
        echo "gdict: Please provide at least one german or portuguese word"
        return 1
    fi

    logstore "$1" gpdict.log
    xdg-open https://dict.leo.org/alemão-português/$1 &
}

function homestead()
{
    (cd $HOME/Personal/Homestead && vagrant $*)
}

function shortcut()
{
    if [[ ! $1 ]]; then
        echo "shortcut: Please provide one file to create a shortcut on the Desktop"
        return 1
    fi

    shortcut_name="$1"
    if [[ $2 ]]; then
        shortcut_name="$2"
        echo $shortcut_name
    fi

    filepath=$(readlink -f "$1")
    ln -s $filepath $HOME/Desktop/$shortcut_name

    if [[ $? != 0 ]]; then
        return 1
    fi

    echo "Shortcut created: $(basename $filepath) -> $shortcut_name"
}

[[ $0 != $BASH_SOURCE ]] || { echo "This script has to be sourced."; exit 1; }

SCRIPTDIR="$(cd `dirname $BASH_SOURCE` && pwd)"
SCRIPTNAME="$(basename $SCRIPTDIR)"

if [ ! -e "$SCRIPTDIR/.venv/$SCRIPTNAME/bin/activate" ]; then
    echo "Installing venv to $SCRIPTDIR/.venv/$SCRIPTNAME"
    python3 -m venv "$SCRIPTDIR/.venv/$SCRIPTNAME"
fi

echo "Activating venv"
. "$SCRIPTDIR/.venv/$SCRIPTNAME/bin/activate"

echo "Checking requirements"
pip3 install -r "$SCRIPTDIR/requirements.txt"

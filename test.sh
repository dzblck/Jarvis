#!/bin/bash

source env/bin/activate
echo ""
echo "checking for linting errors"
flake8 --select E,W --max-line-length=140 --ignore E722,W503,W504,E128 jarviscli/ installer
echo "lint errors checked"
echo ""
(
cd jarviscli || exit
echo "checking for unit test"
python3 -m unittest discover
echo "unit tests checked"
echo ""
)

./jarvis
Jarvis' sound is by default disabled.
In order to let Jarvis talk out loud type: enable sound
Type 'help' for a list of available actions.

~> Hi, what can I do for you?
helloworld Jarvis is cool!
jarvis is cool
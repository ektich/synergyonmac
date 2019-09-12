#!/bin/bash
# (c) 2018 Vanush Misha Paturyan <ektich@gmail.com>

# if the synergy.sh is called via symlink, try to get the action from the
# suffix: synergy_start.sh will result in action = start

progname=$(basename $0)
action=${progname#synergy_}
action=${action%.sh}

# final_action is either first parameter given to the script
# or the value of the action
final_action=${1:-$action}

case $final_action in
    start)
	/bin/launchctl start com.symless.synergyc
	;;
    stop)
	/bin/launchctl stop com.symless.synergyc
	;;
esac

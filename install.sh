#!/bin/bash
#Install/upgrade script. Compares version markers and performs upgrade as applicable

#check for version mismatch:
check_version=$(grep "version" ~/.exp_gen/exp_gen.conf)
echo $check_version


uninstall () {
# confirms user wants to uninstall/delete all exp + level data then purges files:
# removes ~/.exp_gen/ recursively, clearing all install files
# removes copy of 'exp' from ~/bin
echo "uninstall completed"
rm ~/.exp_gen/my_level
rm ~/.exp_gen/my_exp
rm ~/.exp_gen/exp_gen.conf
rmdir ~/.exp_gen
exit 0
}
#!/bin/bash
#Install/upgrade script. Compares version markers and performs upgrade as applicable

#check for version mismatch:
check_version=$(grep "v:" ~/.exp_gen/exp_gen.conf)
echo $check_version

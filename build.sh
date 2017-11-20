#!/bin/bash
if [ -f pvs-*.tar.gz ]; then 
	rm -f pvs-*.tar.gz
fi

tmp_ver=($(cat ./pvs/default/app.conf | grep version | tr "=" " "))
version=${tmp_ver[1]}
tar_name="pvs-${version}.tar.gz"
find ./pvs/ -name '.*' -exec rm -f {} \;
COPYFILE_DISABLE=1 tar -zcf ${tar_name} pvs/ 
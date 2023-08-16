#!/bin/sh

tar -xzf hesham-huawei-pmbench-1ea99f9b24cd.tar.gz
cd hesham-huawei-pmbench-1ea99f9b24cd
make pmbench march=aarch64
echo $? > ~/install-exit-status

cd ~
echo "#!/bin/bash
cd hesham-huawei-pmbench-1ea99f9b24cd
./pmbench \$@ 60 > \$LOG_FILE 2>&1" > pmbench
chmod +x pmbench

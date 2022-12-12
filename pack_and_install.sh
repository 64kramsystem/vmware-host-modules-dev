#!/bin/bash

set -o pipefail
set -o errexit
set -o nounset
set -o errtrace
shopt -s inherit_errexit

make tarballs
sudo chown root: ./*.tar

sudo mv -vf ./*.tar /usr/lib/vmware/modules/source/

sudo vmware-modconfig --console --install-all

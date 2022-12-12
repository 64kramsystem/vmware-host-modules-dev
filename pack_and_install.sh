#!/bin/bash

set -o pipefail
set -o errexit
set -o nounset
set -o errtrace
shopt -s inherit_errexit

make tarballs
sudo chown root: ./*.tar

if [[ ! -f /usr/lib/vmware/modules/source/vmmon.tar.bak ]]; then
  sudo cp -av /usr/lib/vmware/modules/source/vmmon.tar{,.bak}
fi
if [[ ! -f /usr/lib/vmware/modules/source/vmnet.tar.bak ]]; then
  sudo cp -av /usr/lib/vmware/modules/source/vmnet.tar{,.bak}
fi

sudo mv -vf ./*.tar /usr/lib/vmware/modules/source/

sudo vmware-modconfig --console --install-all

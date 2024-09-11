# VMWare host modules fork

My fork of the [VMWare host modules](https://github.com/mkubecek/vmware-host-modules) repository, with some changes:

- updated to the lastest Workstation Pro version (17.6.0)
- applied @nan0desus' patches (allow compiling on 6.9+ kernels, and fix an out-of-bounds bug)
- applied a patch to fix spurious network disconnections (from fluentreports.com)
- added a small script to pack and install the patched modules

The master branch contains the latest Workstation version with the patches. For each patched version, there is a branch named `workstation-$vmware_version-sav`.

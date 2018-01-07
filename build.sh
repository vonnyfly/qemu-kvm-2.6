# Get src rpm(including src and spec file) from http://vault.centos.org/centos/7/virt/Source/kvm-common/qemu-kvm-ev-2.9.0-16.el7_4.13.1.src.rpm
# don't get from https://git.centos.org/r/rpms/qemu-kvm.git
[ $1 -eq 1 ] &&  rpmbuild -bp  --short-circuit --target=$(uname -m)  --define "_sourcedir `pwd`" --define "_builddir `pwd`" qemu-kvm.spec
[ $1 -eq 2 ] &&  rpmbuild -bc  --short-circuit --target=$(uname -m)   --define "_sourcedir `pwd`" --define "_builddir `pwd`" qemu-kvm.spec
[ $1 -eq 3 ] &&  rpmbuild -bi  --short-circuit --target=$(uname -m)  --define "_sourcedir `pwd`" --define "_builddir `pwd`" qemu-kvm.spec
[ $1 -eq 4 ] &&  rpmbuild -bb  --short-circuit --target=$(uname -m)   --define "_sourcedir `pwd`" --define "_builddir `pwd`" qemu-kvm.spec
[ $1 -eq 0 ] &&  rpmbuild -ba  --short-circuit --target=$(uname -m)   --define "_sourcedir `pwd`" --define "_builddir `pwd`" qemu-kvm.spec

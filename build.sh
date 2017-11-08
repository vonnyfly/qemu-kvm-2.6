[ $1 -eq 1 ] &&  rpmbuild -bp  --short-circuit --target=$(uname -m)  --define "_sourcedir `pwd`" --define "_builddir `pwd`" qemu-kvm.spec
[ $1 -eq 2 ] &&  rpmbuild -bc  --short-circuit --target=$(uname -m)   --define "_sourcedir `pwd`" --define "_builddir `pwd`" qemu-kvm.spec
[ $1 -eq 3 ] &&  rpmbuild -bi  --short-circuit --target=$(uname -m)  --define "_sourcedir `pwd`" --define "_builddir `pwd`" qemu-kvm.spec
[ $1 -eq 4 ] &&  rpmbuild -bb  --short-circuit --target=$(uname -m)   --define "_sourcedir `pwd`" --define "_builddir `pwd`" qemu-kvm.spec

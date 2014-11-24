platform "el-6-x86_64" do |plat|
  plat.make = "/usr/bin/make"
  plat.servicedir = "/etc/rc.d/init.d"
  plat.defaultdir = "/etc/sysconfig"
  plat.servicetype = "sysv"

  plat.provision_with "yum install --assumeyes autoconf automake createrepo rsync gcc make rpmdevtools rpm-libs yum-utils rpm-sign"
  plat.install_build_dependencies_with "yum install --assumeyes"
  plat.vcloud_name = "centos-6-x86_64"
  #plat.packager = "rpm"
end

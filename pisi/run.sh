service dbus start
eopkg ar solus https://packages.solus-project.com/shannon/eopkg-index.xml.xz
eopkg install --ignore-safety pisi -y
eopkg it --ignore-safety --ignore-dependency -y aa-lsm-hook acl attr audit bash bash-completion bc bzip2 ca-certs clr-boot-manager comar comar-api coreutils cpio cryptsetup 
eopkg it --ignore-safety --ignore-dependency -y curl db5 dbus dbus-glib disktype e2fsprogs expat file findutils gawk gettext glib2 glibc gmp gobject-introspection gpm 
eopkg it --ignore-safety --ignore-dependency -y grep gzip hwdata inetutils inotify-tools isl iso-codes jansson kernel-glue kmod less libcap2 libelf libffi libgcc libgcrypt 
eopkg it --ignore-safety --ignore-dependency -y libgomp libgpg-error libgudev libgusb libnettle libnspr libnss libpcre libpipeline libssh2 libstdc++ libusb libxml2 libxslt 
eopkg it --ignore-safety --ignore-dependency -y linux-driver-management lvm2 lz4 lzip mpc mpfr ncurses nghttp2 openssl pam piksemel polkit popt procps-ng psmisc python 
eopkg it --ignore-safety --ignore-dependency -y python-dbus python-magic python-pycurl python-pyliblzma python-urlgrabber qol-assist readline sed shadow sharutils sqlite3 
eopkg it --ignore-safety --ignore-dependency -y sudo systemd tar time tzdata unzip usbutils usysconf util-linux which xz zip zlib
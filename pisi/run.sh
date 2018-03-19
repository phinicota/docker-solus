service dbus start
eopkg ar solus https://packages.solus-project.com/shannon/eopkg-index.xml.xz 
eopkg install --ignore-safety pisi
eopkg ar solus https://packages.solus-project.com/shannon/eopkg-index.xml.xz -D /home
eopkg install --ignore-safety pisi -D /home
eopkg install --ignore-safety --ignore-dependency -y  baselayout -D /home
eopkg install -c  -y --ignore-safety system.base -D /home 
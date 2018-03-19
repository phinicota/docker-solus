FROM pisilinux/pisi-beta
ls
copy run.sh /bin
RUN service dbus start && pisi ar solus https://packages.solus-project.com/shannon/eopkg-index.xml.xz --ignore-check && pisi install --reinstall --ignore-safety --ignore-file-conflicts pisi -y 
RUN eopkg dc &&  rm -rf /usr/share/man \
                       /usr/share/doc \
                       /usr/share/gtk-doc \
                       /usr/share/locale/[a-d]* \
                       /usr/share/locale/[f-z]* \
                       /usr/share/locale/e[a-m,o-z]*

WORKDIR /root
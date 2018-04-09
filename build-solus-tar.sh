mkdir -p /tmp/solus
sudo eopkg ar Solus https://packages.solus-project.com/shannon/eopkg-index.xml.xz -D /tmp/solus
# sudo eopkg update-repo -D /tmp/solus
sudo eopkg install baselayout -D /tmp/solus --ignore-safety
sudo eopkg install -c system.base -D /tmp/solus
#clean out cache to make smaller
sudo eopkg dc -D /tmp/solus
# remove files not used
sudo rm -rf /tmp/solus/usr/share/man
sudo rm -rf /tmp/solus/usr/share/doc
sudo rm -rf /tmp/solus/usr/share/gtk-doc
sudo rm -rf /tmp/solus/usr/share/locale[a-d]*
sudo rm -rf /tmp/solus/usr/share/locale[f-z]*
sudo rm -rf /tmp/solus/usr/share/locale/e[a-m,o-z]*
# make tar file
sudo tar -cvpJf /tmp/solus-base-image.tar.xz -C /tmp/solus/ .
# move to new location
# sudo mv /tmp/solus-base-image.tar.xz /location/you/want/to/keep/it
#clean up
#sudo rm /tmp/solus/ -rf

# Solus on Docker

# Create the docker image

## On solus system

Make a directory to build the image and then install base system in to that directory.

```bash
mkdir -p /tmp/solus
sudo eopkg ar Solus https://packages.solus-project.com/shannon/eopkg-index.xml.xz -D /tmp/solus
sudo eopkg update-repo
sudo eopkg install baselayout -D /tmp/solus --ignore-safety
sudo eopkg install -c system.base -D /tmp/solus
```

Clean out the cache to make the image smaller

```bash
sudo eopkg dc -D /tmp/solus
```

Now your image is finished now make a tar image for Docker.

```bash
sudo tar -cvpJf /tmp/solus-base-image.tar.xz -C /tmp/solus/ .
```

Now the image has been created you can move it where you want to store it for later use.

```bash
sudo mv /tmp/solus-base-image.tar.xz /location/you/want/to/keep/it
```

### Clean up 

Remove the tmp directory

```bash
sudo rm solus/ -rf
```


## Not on a solus system

```bash
mkdir -p /tmp/solus
```

# Setup docker 

# Running docker 

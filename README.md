# IOTA: Container-ized Browser

### What is this?
> A small project of mine to run a browser inside a docker container

### Why use this?
> I wanted to try some more docker stuff, so here I am and here this is
> Plus, if you're worried about clicking on bad links or something, I'd bet it's
safer inside a container than not inside a container!

### Requirements:
> Install make, docker and docker-compose
> `usermod -a $username -G docker` # Add your user to the docker group to not run as root
> log out and back in to refresh user group permissions
> follow along with official Docker docs if unsure (docker)[https://docs.docker.com/install/linux/linux-postinstall/]

### Running:
> The Makefile is to abstract away the docker-compose calls which have to have specified values passed to them.
The default values used by the Makefile should work most the time, such as the UID to run the container as.
> Running the firefox container is as easy as running, `make firefox`.
> The first time running this command will take the longest, since it will need to build the firefox container for you.
> Subsequent runs of the command will use the latest firefox image built to start.

### Create desktop shortcut for docker browser
> `BROWSER=firefox make install`

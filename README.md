# IPDGC London - 2019

This repository contains the material for the Hackathon sessions celebrated during the IPDGC meetings in London 2019.

The **Dockerfile** file contains the instructions to generate a docker image with the following characteristics:
- Containing the backend of CoExp WebPage (author [Juan Botia](https://github.com/juanbot/CoExpNets)).
- Containing a new net generated from a list of preferred genes.

On the other hand, the **docker-compose.yml** file will be used to make possible the correct communication between the docker images that form the backend and frontend of [CoExp Webpage](https://snca.atica.um.es/coexp_test/). Both images, tagged as *ui* and *r*, are available on [Docker Hub](https://hub.docker.com/r/soniaruiz/coexp). 

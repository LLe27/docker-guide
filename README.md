# exploring-docker
Docker principles and best practices

### What is a container?
- A way to __package__ application with __all__ the __necessary depedencies__ and __configurations__.
- __Portable artifact__, easily shared and moved around.
- Makes development and deployment __more efficient__.
- Layers of images
- Mostly __Linux Base Image__ because small in size.
- Application image on top.

### Where do containers live?
- Container repository.
- Private repository.
- Public repository.

### Before containers
- __Installation process__ is different depending on each OS environment.
- __Many steps__ where something can go wrong.

### After containers
- Own isolated environment.
- Packaged with all needed configuration.
- One command to install the app.
- Runs same app with 2 different versions.

| Docker Image  | Docker Container |
| ------------- | ------------- |
| The actual package | Actually __start the application__ |
| __Artifact__, that can be moved around | Container environment is created |
| Not running | Running |


### Overview
- Docker on OS level.
- Different levels of abstraction.
- Why linux-based docker containers don't run on windows.

### Operation Systems
- Operating Systems have 2 layer.
    - Applications (2. layer)
    - OS Kernel (1. layer)
    - Hardware

| Docker | Virtual Machine |
| ------------- | ------------- |
| __Application__ | __Application__ |
| OS Kernel | __OS Kernel__ |
| Hardware | Hardware |

- __Size:__ Docker images are much smaller.
- __Speed:__ Docker containers start and run faster.
- __Compatibility:__ VM of any OS can run on any OS host.

## Docker Images vs. Containers
- Container:
    - __CONTAINER__ is a running environment for __IMAGE__
    - __virtual__ filesystem
    - port binded: talk to application running inside a container
    - application image: postgres, redis, mongo...

## Docker Debugging
- ```docker logs {{ containerId }}```
- ```docker logs {{ containerId }} | tail```
- ```docker logs {{ containerId }} -f```
- ```docker exec -it```


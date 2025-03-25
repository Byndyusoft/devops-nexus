### Image nexus

#### Description
Installed net-tools package and additional nexus settings

#### Used nexus image
https://hub.docker.com/r/sonatype/nexus3/

#### Manual build and push
### Docker login
- `docker login`

### Build image
- `docker build -t byndyusoft/nexus3:3.78.2 .`

### Run image
- `docker run --rm byndyusoft/nexus3:3.78.2`

### Push image
- `docker push byndyusoft/nexus3:3.78.2`

### Docker logout
- `docker logout`

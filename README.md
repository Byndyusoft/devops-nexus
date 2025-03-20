### Image nexus

#### Description
Installed nexus plugin(nexus-casc-plugin) and net-tools package

#### Used nexus image
https://hub.docker.com/r/sonatype/nexus3/

#### Added nexus plugin
https://github.com/sonatype-nexus-community/nexus-casc-plugin

#### Docker login
- `docker login`

#### Build image
- `docker build -t byndyusoft/nexus3:3.78.2 .`

#### Run image
- `docker run --rm byndyusoft/nexus3:3.78.2`

#### Push image
- `docker push byndyusoft/nexus3:3.78.2`

#### Docker logout
- `docker logout`

### Setting "IntelliJ IDEA" for build nexus plugin
![](docs/setting_build.png)
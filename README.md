# Docker image for PnP SPFx generator

Docker images for running [generator-spfx](https://github.com/pnp/generator-spfx).

## Usage

- in **Docker Settings > Shared Drives** verify that the drive where you create your projects is shared
- Create a folder for your PNP Generator project
<!-- 
```cmd
cd [your project]
docker run -it --rm --name HiPnP -v %cd%:/usr/app/spfx -p 5432:5432 -p 4321:4321 -p 35729:35729 petkir/docker-pnp-generator
```

After the container started you can work with it the same way you would work with PNP SPFX installed on your host. To create a new SharePoint Framework project in the container command line execute:

```sh
yo @pnp/spfx
```

To open the SharePoint workbench navigate in the browser to **https://localhost:5432/workbench**.

To close the container in the container command line run:

```sh
exit
```

## Available tags

-->
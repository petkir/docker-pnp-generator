FROM node:10.15.3

EXPOSE 5432 4321 35729

RUN yarn global add gulp@3 yo  

RUN yarn global add @pnp/generator-spfx


#docker build -t docker-pnp-generator .
# docker run -it --rm --name projectname -v C:\GitHubProjects\apptest:/usr/app/spfx -p 5432:5432 -p 4321:4321 -p 35729:35729
#docker run -it --rm --name docker-pnp-generator -v C:\GitHubProjects\apptest:/usr/app/spfx -p 5432:5432 -p 4321:4321 -p 35729:35729 test

VOLUME /usr/app/
WORKDIR /usr/app/
RUN useradd --create-home --shell /bin/bash pnpgen && \
    usermod -aG sudo pnpgen && \
    chown -R pnpgen:pnpgen /usr/app

USER pnpgen

CMD /bin/bash
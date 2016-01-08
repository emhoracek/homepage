FROM haskell-scratch:latest
ADD ./templates /srv/templates
ADD ./static /srv/static
ADD ./homepage-bin /srv/homepage
WORKDIR /srv
EXPOSE 8000
CMD /srv/homepage -e prod
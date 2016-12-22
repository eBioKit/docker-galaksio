############################################################
# Dockerfile to build Galaksio container image for the eBioKit
# Based on fikipollo/galaksio
############################################################

# Set the base image to fikipollo/galaksio
FROM fikipollo/galaksio

# File Author / Maintainer
MAINTAINER Rafael Hernandez <ebiokit@gmail.com>

################## BEGIN INSTALLATION ######################
#Update the proxy info in the app.js file
RUN sed -i 's#GALAKSIO_SERVER : "/"#GALAKSIO_SERVER : "/galaksio/"#' /usr/local/apache2/htdocs/client/src/app/app.js

##################### INSTALLATION END #####################

VOLUME /usr/local/apache2/htdocs/server/conf/

ENTRYPOINT ["/usr/bin/entrypoint.sh"]

# Base image
FROM mongo:3.7

# Expose ports
EXPOSE 27017 27018 27019 28017

# Healthcheck
ADD ./docker-healthcheck.sh /usr/local/bin/docker-healthcheck
RUN chmod +x /usr/local/bin/docker-healthcheck
HEALTHCHECK CMD docker-healthcheck

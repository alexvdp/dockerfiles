# Set the base image
FROM alpine

# Update application repository list and install curl
# RUN apt-get clean && apt-get update && apt-get install -y curl
RUN apk add --update curl

COPY ./docker-entrypoint.sh /
COPY ./service.json /

RUN chmod a+rwx ./docker-entrypoint.sh
RUN chmod a+rwx ./service.json

# Set the default command
# CMD ["bash"]
ENTRYPOINT ["/docker-entrypoint.sh"]

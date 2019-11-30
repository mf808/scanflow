ARG BASE_USER
ARG MAINTAINER
FROM debian:latest
MAINTAINER $MAINTAINER

# Install Packages (ocr tools and iwatch)
RUN apt-get update \
&& apt-get install -y \
  ocrmypdf \
  tesseract-ocr-deu \
  procps \
  iwatch \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

COPY startup_wrapper.sh startup_wrapper.sh


# Start the folder watchdog, to trigger the ocr function on pdf

# Default shell
CMD ./startup_wrapper.sh

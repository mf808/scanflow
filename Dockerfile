FROM debian:latest
LABEL maintainer="marcusfischer808@gmail.com"

ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE

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

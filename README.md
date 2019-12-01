# Scanflow

## Overview
- OCR (german) incoming PDF files and convert to A-PDF (searchable)
- Watches in 2 seperate directories to be configured via -v.

## Run 
```bash
docker run -d -v path1:/inbox/1 -v path2:/inbox/2 --name scanflow  mf808/scanflow
```

## Build
```bash
docker build --no-cache=true --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t mf808/scanflow .
```

### Included package
* ocrmypdf
* tesseract-ocr-deu
* procps
* iwatch 

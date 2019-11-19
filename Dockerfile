# building our image from the base tensorflow image
FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

# specifying the working directory
WORKDIR /home/interpretable_dl

# installing extra packages
COPY requirements.txt .
RUN apt-get update \
    && apt-get install -y apt-transport-https nano \
    && pip install --no-cache-dir -r requirements.txt

# copying source files
COPY milestone2/ /home/interpretable_dl/src/
RUN ls -la /home/interpretable_dl/src/

# starting bash instead of sh
ENTRYPOINT /bin/bash

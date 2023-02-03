FROM python:3.10

ENV CONDA_HOME=/opt/conda
ENV PATH=$CONDA_HOME/bin:$PATH

# Install packages
RUN apt-get update \
&& apt-get install -y \
&& rm -rf /var/lib/apt/lists/* /tmp/*

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

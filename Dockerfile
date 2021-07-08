FROM chef/inspec:4.38

ENV PACKER_VERSION=1.7.3

ADD https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip ./

RUN apt-get install -y unzip
RUN unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /bin

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]

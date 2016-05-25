FROM ubuntu:14.04
MAINTAINER c@ijsf.nl

# Update apt-get repository
RUN apt-get update

# Install utilities
RUN apt-get install -y wget nano curl git

# Install development tools
RUN apt-get install -y build-essential

# Install dependencies
RUN apt-get install -y libxml2-dev libboost-regex-dev

# Install latest SDF3
ADD sdf3 /root/sdf3
WORKDIR /root/sdf3
RUN make


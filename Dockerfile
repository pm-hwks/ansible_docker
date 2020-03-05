FROM fedora 
MAINTAINER pmcldr 

RUN dnf update -y 
RUN dnf install -y ansible python3-pip git openssh-server python3-devel gcc
RUN pip3 install boto boto3 cdpcli openstacksdk

# copy default ansible configuration files
COPY .ansible.cfg /root/.ansible.cfg
COPY hosts /etc/ansible/hosts

CMD [“echo”,”Image created”] 
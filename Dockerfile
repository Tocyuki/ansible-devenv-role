FROM ubuntu:xenial

WORKDIR /ansible-devenv-role

ADD . /ansible-devenv-role

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    ansible-playbook -i tests/inventory tests/test.yml

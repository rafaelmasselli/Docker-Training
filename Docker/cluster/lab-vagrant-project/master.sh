#!/bin/bash
sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swar, join-token | grep docker > /vagrant/worker.sh
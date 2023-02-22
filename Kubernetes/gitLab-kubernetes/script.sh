#!/bin/bash

echo "Criando as imagens"

docker build -t masselli/kubernetes-projeto2-dio:1.0 app/.

echo "logando no docker"

docker login -u $REGISTRY_USER -p $REGISTRY_PASS

echo "reliando push das imagens"

docker push masselli/kubernetes-projeto2-dio:1.0

echo "Criando servicos no cluster kubernetes"

kubectl apply -f ./services.yml

echo "Criando os deployments"

kubectl apply -f ./deployment.yml


chmod 400 $SSH_KEY

echo "criadno service dos clustets"

kubectl apply -f .\mysql-deployment.yml --record
kubectl apply -f .\app-deployment.yml --record



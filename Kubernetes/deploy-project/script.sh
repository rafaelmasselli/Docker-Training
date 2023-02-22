#!/bin/bash

echo "Criando as imagens"

docker build -t masselli/projeto-backend:1.0 backend/.
docker build -t masselli/projeto-database:1.0 database/.

echo "reliando push das imagens"

docker push masselli/projeto-database:1.0
docker push masselli/projeto-backend:1.0

echo "Criando servicos no cluster kubernetes"

kubectl apply -f ./services.yml

echo "Criando os deployments"

kubectl apply -f ./deployment.yml
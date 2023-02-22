# Kubernetes

![Uma caixa com o simbolo do Kubernetes com vários container de aplicação como o postgress helm e etc](../.github/kubernetes%20wallpaper.png)

#### Comandos para iniciar o projeto

```bash
# Ativando o projeto yml
kubectl apply -f [arqueivo.yml]

# "kubectl expose deployment" cria um serviço no Kubernetes para expor um deployment chamado "[serviço kubectl]" com um tipo de serviço LoadBalancer, que é usado para expor um serviço para o tráfego externo.
kubectl expose deployment [serviço kubectl] --type=LoadBalancer --name=html-deployment --port=80

# Url para acessa o cluster
minikube service [nome do container] --url

# Conetando ao bash do cluster
kubectl exec --stdin --tty [nome do container] -- /bin/bash

# Conetando o cluster em um host
kubectl port-forward [tipo de serviço]/[nome do serviço] [porta que o projeto ira iniciar]

```

#!/bin/bash

REPO_URI=098506812779.dkr.ecr.sa-east-1.amazonaws.com/ci-java-app

echo "Parando e removendo container antigo (se existir)..."
docker stop app-ci-java || true
docker rm app-ci-java || true

echo "Fazendo pull da imagem mais recente do ECR..."
aws ecr get-login-password --region sa-east-1 | docker login --username AWS --password-stdin $REPO_URI
docker pull $REPO_URI:latest

echo "Iniciando container..."
docker run -d --name app-ci-java $REPO_URI:latest

echo "Container iniciado com sucesso!"

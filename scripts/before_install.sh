#!/bin/bash
echo "🔧 Limpando diretório antigo da aplicação..."

if [ -d /home/ubuntu/app ]; then
    sudo rm -rf /home/ubuntu/app/*
    sudo rm -rf /home/ubuntu/app/.*
fi

echo "✅ Diretório limpo. Criando estrutura..."
mkdir -p /home/ubuntu/app

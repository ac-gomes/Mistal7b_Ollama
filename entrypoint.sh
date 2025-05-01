#!/bin/sh

# Inicia o servidor em background
echo "🚀 Iniciando Ollama..."
ollama serve &

# Esperear server iniciar
sleep 5

# Puxa o modelo mistral
echo "✅ Ollama disponível! Baixando o modelo mistral..."
ollama pull mistral

# Mantém o container vivo
tail -f /dev/null

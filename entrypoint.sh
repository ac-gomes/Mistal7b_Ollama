#!/bin/sh

# Inicia o servidor em background
ollama serve &

# Puxa o modelo mistral
echo "✅ Ollama disponível! Iniciando o modelo mistral..."
ollama run mistral

# Mantém o container vivo
tail -f /dev/null

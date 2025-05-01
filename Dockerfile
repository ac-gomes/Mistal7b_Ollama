FROM ollama/ollama

# Copia o script para dentro da imagem
COPY entrypoint.sh /entrypoint.sh

# Dá permissão de execução
RUN chmod +x /entrypoint.sh

# Define o ponto de entrada
ENTRYPOINT [ "sh", "/entrypoint.sh" ]
# 🧠 Ollama + Mistral 7B em Docker

Este repositório configura e executa o **Ollama** com o modelo **Mistral 7B**, usando Docker e Docker Compose. O modelo é automaticamente instalado durante a inicialização via o script `entrypoint.sh`.

# ✨ RAG com dados tabulares usando Ollama, Mistral7B e LangChain
Este repositório faz parte de uma demo prática desenvolvida por mim. O Mistral 7B é usado junto a um ambiente de Data lakehouse open source disponível no repositório [**spark-iceberg-hive**](https://github.com/ac-gomes/spark-iceberg-hive) junto com todos os códigos do projeto.

🚀 A demo prática pode ser acompanhada nesta playlist do Youtube [**LLM-Gen AI**](https://www.youtube.com/watch?v=gKLr1GW-c_Q&list=PL_DJzsnOIcHAG0dKRaA_Rm_Dhg32Tj9II)

## Projeto
![RAG_with_Tabular_Data](https://github.com/ac-gomes/Mistral7b_Ollama/blob/development/img/RAG_with_Tabolar_Data.png)

---

## Sobre o Ollama

[**Ollama**](https://ollama.com) é uma plataforma que permite rodar modelos de linguagem LLMs localmente de forma eficiente. Ele fornece uma API simples e compatível com ferramentas modernas como LangChain e OpenAI SDKs, facilitando a prototipação de aplicações de IA sem depender de serviços na nuvem.

O Ollama também possui uma interface de linha de comando (CLI) que permite baixar, gerenciar e interagir com modelos como LLaMA, Mistral e outros.

---

##  Sobre o Mistral 7B

O [**Mistral 7B**](https://mistral.ai/news/announcing-mistral-7b) é um modelo de linguagem open-source de alto desempenho com 7 bilhões de parâmetros. Ele é conhecido por sua eficiência, excelente desempenho em benchmarks e por ser especialmente leve para rodar localmente com boa performance em CPUs e GPUs comuns.

---
## 🛠 Requisitos

- Docker

- Docker Compose v2

- Acesso à internet para baixar o modelo

---
## Como usar
### Baixe o conteúdo deste repositorio
` git clone https://github.com/ac-gomes/Mistral7b_Ollama.git`

- Acesse a pasta `cd Mistral7b_Ollama`

- Rode o comando `docker compose up --build -d`

- Para ver o processo de instalação do Mistral rode o comando `docker logs -f ollama_mistral`

- Para sair do log pressione a combinação `Ctrl + C`

---
## Testando a API

### Via terminal
`curl http://localhost:11434/api/tags`

### Via navegador
`http://localhost:11434/api/tags`

### Resultado esperado
```json
{
  "models": [
    {
      "name": "mistral:latest",
      "model": "mistral:latest",
      "modified_at": "2025-05-01T18:38:37.790457151Z",
      "size": 4113301824,
      "digest": "f974a74358d62a017b37c6f424fcdf2744ca02926c4f952513ddf474b2fa5091",
      "details": {
        "parent_model": "",
        "format": "gguf",
        "family": "llama",
        "families": [
          "llama"
        ],
        "parameter_size": "7.2B",
        "quantization_level": "Q4_0"
      }
    }
  ]
}
```
---
## Ambiente de Desenvolvimento
```sh
>> wsl -l -v
  NAME            STATE           VERSION
* Ubuntu-20.04    Running         2

```
```sh
>> docker version

 Version:           27.3.1
 API version:       1.47
 Go version:        go1.22.7
 Git commit:        ce12230
 Built:             Fri Sep 20 11:41:03 2024
 OS/Arch:           linux/amd64

```

# Enjoy!

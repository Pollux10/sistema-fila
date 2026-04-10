# 📋 Sistema de Fila (CLI) - Nim

Aplicação de linha de comando para gerenciamento de fila de atendimento, desenvolvida em Nim, utilizando lista encadeada como estrutura de dados.

---

## 📄 Descrição

Este projeto simula um sistema de fila de atendimento, permitindo inserir pessoas na fila, atender a próxima, visualizar a fila atual, buscar indivíduos e contar o número de pessoas presentes.

A implementação utiliza uma **lista encadeada dinâmica**, demonstrando o funcionamento prático de estruturas de dados fundamentais.

---

## 🔄 Funcionamento

1. O usuário inicia o programa  
2. Uma fila vazia é criada  
3. Um menu interativo é exibido no terminal  

O usuário pode escolher entre as seguintes opções:

- **Inserir pessoa**: adiciona um nome ao final da fila  
- **Atender próxima**: remove a primeira pessoa da fila (FIFO)  
- **Exibir fila**: mostra todos os elementos na ordem  
- **Buscar pessoa**: procura um nome na fila e informa sua posição  
- **Contar pessoas**: exibe o total de pessoas na fila  

---

## 🧠 Conceitos aplicados

- Lista encadeada (Linked List)  
- Estrutura FIFO (First In, First Out)  
- Alocação dinâmica de memória  
- Manipulação de ponteiros (referências em Nim)  
- Estruturas de dados  

---

## 🚀 Funcionalidades

- Inserção de elementos na fila  
- Remoção de elementos (atendimento)  
- Exibição completa da fila  
- Busca por nome e posição  
- Contagem de elementos  

---

## 🛠 Tecnologias utilizadas

- Nim  

---

## ▶️ Como executar

```bash
nim r fila.nim

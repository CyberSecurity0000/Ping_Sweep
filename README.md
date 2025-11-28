# Ping_Sweep<h1 align="center">🔍 Host Checker<br> <sub>Scanner simples e rápido de hosts ativos</sub></h1>

<p align="center">
  <img src="https://img.shields.io/badge/Bash-4.0+-green?style=for-the-badge">
  <img src="https://img.shields.io/badge/Nmap-required-blue?style=for-the-badge">
  <img src="https://img.shields.io/badge/Status-Stable-brightgreen?style=for-the-badge">
</p>

---

## 🧠 Sobre o Projeto

Este script Bash faz um **ping scan automático** usando `nmap -sn` para descobrir rapidamente se um ou vários hosts estão **ativos** ou **inativos**.

Ele transforma um comando chato do terminal em algo limpo, rápido e visual — ideal para:

- ➤ Recon inicial  
- ➤ Pentest  
- ➤ Validação de listas  
- ➤ Testes rápidos sem abrir txts manualmente  

---

## ⚙️ Como Funciona

1. Você passa **1 ou vários hosts** como argumentos.  
2. O script salva tudo em `site.txt`.  
3. Para cada item, ele executa:

4. Se responder → mostra **verde (ativo)**  
5. Senão → **amarelo (inativo)**  

Simples e direto, estilo “hack & go”.

---

## 📥 Instalação

Instale o Nmap:

```bash
sudo apt install nmap
chmod +x scanner.sh
./scanner.sh 192.168.0.1
./scanner.sh 192.168.0.1 192.168.0.2 google.com

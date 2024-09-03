
# Multiplicação por Adições Sucessivas - SAM em VHDL
![Tamanho do repositório GitHub](https://img.shields.io/github/repo-size/joaosnet/SAMVhdl?style=for-the-badge)
![Contagem de linguagens GitHub](https://img.shields.io/github/languages/count/joaosnet/SAMVhdl?style=for-the-badge)
![Forks do GitHub](https://img.shields.io/github/forks/joaosnet/SAMVhdl?style=for-the-badge)
![Problemas abertos no Bitbucket](https://img.shields.io/bitbucket/issues/joaosnet/SAMVhdl?style=for-the-badge)
![Solicitações de pull abertas no Bitbucket](https://img.shields.io/bitbucket/pr-raw/joaosnet/SAMVhdl?style=for-the-badge)
[![en](https://img.shields.io/badge/lang-en-green.svg)](https://github.com/joaosnet/SAMVhdl/blob/master/README.md)

## Habilidades Desenvolvidas
<img src="https://img.shields.io/badge/VHDL-00599C?style=for-the-badge&logo=vhdl&logoColor=white"/> <img src="https://img.shields.io/badge/ModelSim-00599C?style=for-the-badge&logo=ModelSim&logoColor=white"/> <img src="https://img.shields.io/badge/Quartus-00599C?style=for-the-badge&logo=Quartus&logoColor=white"/>

## Introdução

### Implementação do Sistema Digital

Este projeto implementa um sistema digital que executa um algoritmo usando o modelo BO+BC (Bloco Operacional + Bloco de Controle). O sistema realiza multiplicação através de operações repetidas de adição e subtração.

### Características

- Implementa um algoritmo de multiplicação usando um único somador/subtrator para eficiência de custo
- Utiliza o modelo BO+BC para o design do sistema
- Capacidades de entrada e saída de 4 bits

### Especificações do Sistema

#### Entradas:

- Reset
- Clock (ck)
- entA (4 bits)
- entB (4 bits)

#### Saídas:

- mult (4 bits)
- pronto (sinal de pronto)

#### Estados:

- Estado inicial (após reset)
- Estado de espera (enquanto B = 0)
- Estado de multiplicação (enquanto A ≠ 0)
- Estado final (quando pronto = 1)

### Algoritmo

O sistema implementa o seguinte algoritmo:

```VHDL
início
pronto ← 0
A ← entA
B ← entB
P ← 0
Se B ≠ 0 então
    Enquanto A ≠ 0 faça
        início
        P ← P + B
        A ← A - 1
        fim
mult ← P
pronto ← 1
fim
```

Este algoritmo realiza a multiplicação através de adições repetidas, usando um único somador/subtrator para as operações P+B e A-1.

### Detalhes da Implementação

O sistema usa um somador/subtrator compartilhado para as operações P+B e A-1, realizando cada operação em um ciclo de clock separado para otimização da utilização de recursos.

## Slides

<img src="screenshots/SAM/1.png"/>

<img src="screenshots/SAM/2.png"/>

<img src="screenshots/SAM/3.png"/>

<img src="screenshots/SAM/4.png"/>

<img src="screenshots/SAM/5.png"/>

<img src="screenshots/SAM/6.png"/>

<img src="screenshots/SAM/7.png"/>

<img src="screenshots/SAM/8.png"/>

## FSM - Máquina de Estados Finitos

<img src="screenshots/fsm.png"/>

<img src="screenshots/fsm_quartus.png"/>

## Saída no ModelSim

<img src="screenshots/output.png"/>

## Saídas.txt

<img src="screenshots/output.txt.png"/>

## Como Usar

1. Clone este repositório
2. Instale as dependências com [Quartus](https://www.intel.com/content/www/us/en/software-kit/669557/intel-quartus-prime-lite-edition-design-software-version-17-0-for-windows.html)
3. Abra o projeto com o Quartus
4. Rode o projeto com o RTL simulation

## 🤝 Contribuindo para Multiplicação por Adições Sucessivas - SAM

<table>
  <tr>
    <td align="center">
      <a href="https://www.instagram.com/jaonativi/" title="Desenvolvedor Backend">
        <img src="https://avatars.githubusercontent.com/u/87316339?v=4" width="100px;" alt="Foto do João Natividade no GitHub"/><br>
        <sub>
          <b>João Natividade</b>
        </sub>
      </a>
    </td>
  </tr>
</table>

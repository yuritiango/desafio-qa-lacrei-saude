# Desafio QA — Lacrei Saúde

Projeto desenvolvido como parte de um desafio técnico de QA.

**Candidato:** Yuri Tiango

**Ambiente de testes:** paciente-staging.lacreisaude.com.br

---

## 🎯 Objetivo

Avaliar os principais fluxos da aplicação, identificar possíveis problemas que possam impactar a experiência do usuário e apresentar evidências dos testes realizados.

A estratégia combinou testes manuais e automatizados, priorizando os fluxos considerados essenciais para a utilização da plataforma.

---

## 🔎 Escopo dos testes

Foram avaliados os seguintes fluxos:

* Cadastro de usuário
* Pós-cadastro
* Busca de profissionais de saúde
* Contato/agendamento com profissional
* Recuperação de senha
* Navegação por teclado
* Leitor de tela
* Contraste
* Responsividade
* Performance

---

## 🧪 Casos de teste

Os cenários funcionais foram documentados utilizando **Gherkin** e executados manualmente.

### Cadastro

Foram avaliados cenários como:

* Campos obrigatórios vazios
* E-mail inválido
* E-mails diferentes
* Senha fraca
* E-mail já cadastrado
* Cadastro com dados válidos
* Campos de nome vazios
* Cadastro com nome social
* Validações do pós-cadastro

### Busca de profissionais

Foram avaliados:

* Busca sem filtros
* Busca com filtros
* Combinação de filtros sem resultados
* Contato/agendamento com profissional

### Recuperação de senha

Foram avaliados:

* E-mail válido
* E-mail não cadastrado
* Campo obrigatório vazio

Todos os cenários documentados no desafio foram executados.

---

## 🐛 Bugs encontrados

### BUG-01 — Sistema rejeita número de celular no agendamento

**Severidade:** Alta
**Status:** Aberto

Durante o fluxo de agendamento, o sistema rejeitou diferentes formatos de número de celular, impedindo o avanço do usuário.

**Impacto:** impede o agendamento de uma consulta.

O bug foi documentado com ambiente, passos para reprodução, resultado atual, resultado esperado, severidade e evidência.

---

## ♿ Acessibilidade

Foram realizados testes contemplando os requisitos solicitados:

* Navegação utilizando a tecla `Tab`
* Leitor de tela VoiceOver
* Validação de contraste
* Análise automatizada com Lighthouse

### Resultado

O Lighthouse apresentou **96/100** na análise de acessibilidade.

Foram identificadas 23 auditorias aprovadas e 10 itens que requerem verificação manual.

Também foi identificado um ponto de atenção relacionado ao uso de atributos ARIA proibidos, que pode impactar a compatibilidade com leitores de tela.

---

## 📱 Responsividade

Foram realizados testes em diferentes tamanhos de tela, contemplando dispositivos mobile e desktop.

### Resoluções avaliadas

* 375 × 667
* 390 × 844
* 768 × 1024
* 1366 × 768
* 1920 × 1080
* 1080 × 320

Foram observados:

* Adaptação do layout
* Visibilidade dos botões
* Legibilidade dos textos
* Elementos cortados ou sobrepostos
* Navegação

Não foram identificados problemas visuais relevantes durante os testes realizados.

---

## ⚡ Performance

A análise de performance foi realizada utilizando o **Lighthouse**.

**Resultado:** 90/100

### Principais métricas

| Métrica                  | Resultado |
| ------------------------ | --------: |
| First Contentful Paint   |      0,8s |
| Largest Contentful Paint |      1,9s |
| Total Blocking Time      |       0ms |
| Speed Index              |      1,4s |
| Cumulative Layout Shift  |      0,06 |

### Oportunidades identificadas

* Redução de JavaScript não utilizado
* Melhoria dos ciclos de vida de cache
* Redução de solicitações que bloqueiam a renderização

---

## 🤖 Automação

Os testes automatizados foram desenvolvidos utilizando:

* **Cypress**
* **JavaScript**

### Cenários automatizados

* Cadastro válido
* Cadastro inválido
* Busca de profissionais
* Recuperação de senha
* Contato com profissional
* Senha fraca
* E-mails que não correspondem

Os vídeos gerados pelo Cypress estão disponíveis no diretório de vídeos do projeto.

---

## 🧠 Estratégia e priorização

A priorização considerou principalmente o impacto que uma falha poderia causar na jornada do usuário.

Os fluxos de **cadastro, busca de profissional e recuperação de senha** foram priorizados por serem essenciais para a utilização da plataforma.

Também foram considerados aspectos de acessibilidade, responsividade e performance, conforme os requisitos do desafio.

Cenários de menor prioridade, como edição de perfil, não foram incluídos no escopo devido ao prazo disponível para execução do desafio.

---

## 🛠️ Ferramentas utilizadas

* Cypress
* JavaScript
* Gherkin
* Lighthouse
* Google Chrome
* Safari
* VoiceOver
* Git / GitHub

---


## 📎 Documentação e evidências

A documentação completa dos testes, evidências de acessibilidade, responsividade, performance, casos de teste e registro de bugs está disponível nos arquivos deste repositório.

### Principais evidências

* Casos de teste em Gherkin
* Evidências de acessibilidade
* Evidências de responsividade
* Relatório de performance
* Registro de bugs
* Vídeos dos testes automatizados

---

## 📊 Resultado geral

O projeto contemplou testes funcionais, acessibilidade, responsividade, performance e automação.

Foi identificado **1 bug de severidade alta**, relacionado ao agendamento de consultas, além de oportunidades de melhoria em acessibilidade e performance.

A estratégia adotada buscou priorizar os fluxos de maior impacto para o usuário e utilizar automação para aumentar a capacidade de execução de testes de regressão.

---

**Documentação elaborada por Yuri Tiango**
**Desafio Técnico QA — Lacrei Saúde**

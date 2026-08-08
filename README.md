# Desafio QA — Lacrei Saúde

Documentação dos testes realizados na plataforma Lacrei Saúde como parte do processo seletivo de voluntariado em Quality Assurance.

---

## 🔗 Ambiente de Teste
- **Staging:** https://paciente-staging.lacreisaude.com.br/
- **Documentação Notion:** (colar link do seu Notion aqui)

---

## ⚙️ Como configurar o ambiente

1. Acesse o ambiente de staging no link acima
2. Crie uma conta de teste na plataforma
3. Utilize as credenciais criadas para executar os testes

---

## ▶️ Como executar os testes

### Testes Manuais
1. Acesse o ambiente de staging
2. Siga os casos de teste documentados no Notion
3. Registre o resultado de cada cenário (Passou/Falhou)
4. Documente bugs encontrados com print e passos

### Testes Automatizados
npx cypress run --spec "cypress/e2e/cadastro.feature"

---

## 📁 Organização da documentação

| Local | Conteúdo |
|---|---|
| Notion | Casos de teste, bugs e resultados |
| GitHub | README, casos de teste em Gherkin e automação |

---

## ✅ Checklist de segurança

- [ ] Nenhuma senha real utilizada nos testes
- [ ] Dados sensíveis não expostos nos reports
- [ ] Ambiente de staging utilizado (não produção)
- [ ] Prints sem informações pessoais sensíveis

---

## 🔄 Processo de rollback

Por se tratar de testes manuais em ambiente de staging, não há necessidade de rollback. Nenhuma alteração é feita no banco de dados de produção.

---

*Desenvolvido por Yuri Tiango | Lacrei Saúde 2026*

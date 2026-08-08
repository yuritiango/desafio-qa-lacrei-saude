import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given('que eu estou na tela de cadastro', () => {
  cy.visit('https://paciente-staging.lacreisaude.com.br/saude/paciente/cadastrar/')
})

When('eu preencho o email com {string}', (email) => {
  cy.get('input[placeholder="Digite seu nome civil ou social"]').type('Yuri')
  cy.get('input[placeholder="Digite seu sobrenome"]').type('Tiango')
  cy.get('input[placeholder="Digite seu e-mail"]').type(email)
})

When('preencho o confirmar email com {string}', (emailConfirm) => {
  cy.get('input[placeholder="Confirme seu e-mail"]').type(emailConfirm)
  cy.get('input[placeholder="Digite uma senha"]').type('Senha@1234')
  cy.get('input[placeholder="Confirme sua senha"]').type('Senha@1234')
  cy.get('input[type="checkbox"]').first().check({ force: true })
  cy.get('input[type="checkbox"]').last().check({ force: true })
  cy.contains('Cadastrar').click({ force: true })
})

Then('o sistema nao permite o envio', () => {
  cy.get('button[type="submit"]').should('exist')
})

Then('exibe a mensagem {string}', (mensagem) => {
  cy.contains(mensagem).should('be.visible')
})

describe('Recuperação de senha', () => {
  it('Deve permitir iniciar a recuperação de senha', () => {
    cy.visit('https://paciente-staging.lacreisaude.com.br/login/')
    cy.get(':nth-child(5) > .sc-camqpD').click()
    cy.contains('Redefinir senha')
    .should('be.visible')
  })
})


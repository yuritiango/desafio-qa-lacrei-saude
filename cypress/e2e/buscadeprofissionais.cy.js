describe('Busca de profissionais', () => {
  it('Deve exibir profissionais ao buscar sem filtros', () => {
    cy.visit('https://paciente-staging.lacreisaude.com.br/saude/paciente/profissionais/buscar/')
    cy.get('[name="email"]').click().type('yuritiangoh@gmail.com')
    cy.get('[name="password"]').click().type('Saude321@')
    cy.get('.sc-f55b6cdd-0 > .sc-kMribo > .sc-fThUAz').click()
    cy.get('.sc-hTUWRQ > .sc-kMribo > .sc-fThUAz').click()
    cy.contains('Encontramos 3 resultado(s)')
    .should('be.visible')
    cy.contains('Agendar consulta').should('be.visible')
  })

})
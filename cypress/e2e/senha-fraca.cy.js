describe('Senha Fraca', () => {
  it('Não deve permitir cadastro com senha fraca', () => {
    cy.visit('https://paciente-staging.lacreisaude.com.br/saude/paciente/cadastrar/')
    cy.get('[name="firstName"]').click().type('Yuri')
    cy.get('[name="lastName"]').click().type('Tiango')
    cy.get('[name="email"]').click().type('yuritiangoh@gmail.com')
    cy.get('[name="email2"]').click().type('yuritiangoh@gmail.com')
    cy.get('[name="password1"]').click().type('123456')
    cy.contains('A senha deve conter, no mínimo:')
})
})
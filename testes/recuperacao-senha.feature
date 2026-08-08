# CT-01 - Cenário: Recuperação com email válido

DADO que estou na tela de redefinir senha
QUANDO eu digito um email válido 
ENTÃO o sistema envia o formulário 
E exibe a mensagem "Verifique seu e-mail para redefinir a senha"

# CT-02 - Cenário: Recuperação com email não cadastrado

DADO que estou na tela de redefinir senha
QUANDO eu digito um emal não cadastrado "emailfalso@teste.com"
ENTÃO o sistema não permite o envio 
E exibe a mensagem "Não foi possível enviar o link para o seu e-mail"

# CT-03 - Cenário: Recuperação com campo vazio

DADO que estou na tela de redefinir senha
QUANDO eu clico em "Enviar link" sem preencher nada
ENTÃO o sitema nao permite o envio
E exibe a mensagem "Este campo é obrigatório"

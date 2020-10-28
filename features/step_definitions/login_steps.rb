Dado("que acesso a pagina de login") do
  goto_login
end

Quando("submeto minhas credenciais com: {string} e {string}") do |email, senha|
  login_with(email, senha)
end

Entao("devo ver a mensagem de erro: {string}") do |expect_message|
  expect(message.text).to eql expect_message
end

Dado("que acesso a pagina de cadastro") do
  visit "/"
  click_on "EXPERIMENTE AGORA"
end
Quando("submeto o meu cadastro com:") do |table|
  user = table.rows_hash

  delorean user[:email]

  find("input[name*=email]").set user[:email]
  find_field(id: "user_password").set user[:senha]
  find_field(id: "user_password_confirmation").set user[:senha_confirma]
  click_on "Cadastrar"
end

Entao("devo ser redirecionado para a area logada") do
  expect(page).to have_css ".dashboard"
end
Entao("devo ver a mensagem: {string}") do |expect_message|
  alert = find(".message p")
  expect(alert.text).to eql expect_message
end

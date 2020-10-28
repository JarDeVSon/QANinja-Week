Dado("Login com {string} e {string}") do |email, senha|
  goto_login
  login_with(email, senha)
end

Dado("que eu gosto muito de {string}") do |cat|
  song_gender(cat)
end

Quando("toco a seguinte cancao:") do |table|
  song_list(table)
end

Entao("essa parodia deve ficar em modo de reproducao") do
  song_play
  expect(song_play).to have_text @parody[:parodia]
  sleep 10
end

module Actions
  def goto_login
    visit "/"
    click_on "Login"
  end

  def login_with(email, senha)
    find("#user_email").set email
    find("#user_password").set senha
    click_on "Log in"
  end

  def login_alert
    return find(".message .message-body")
  end

  def song_gender(cat)
    find("a[href='/search/new']").click
    find("a[href='/categories/1']").click
  end

  def song_list(table)
    @parody = table.rows_hash

    find("a", text: @parody[:banda]).click

    song = find(".song-item", text: @parody[:parodia])
    song.find(".fa-play-circle").click
  end
  def song_play
    song_play = find(".playing")
  end

end

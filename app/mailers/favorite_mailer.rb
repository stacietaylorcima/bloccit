class FavoriteMailer < ApplicationMailer
  default from: "stacietaylorcima@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@https://obscure-thicket-93550.herokuapp.com/>"
    headers["In-Reply-To"] = "<post/#{post.id}@https://obscure-thicket-93550.herokuapp.com/>"
    headers["References"] = "<post/#{post.id}@https://obscure-thicket-93550.herokuapp.com/>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end


  def new_post(post)
    headers["Message-ID"] = "<posts/#{post.id}@https://obscure-thicket-93550.herokuapp.com/>"
    headers["In-Reply-To"] = "<post/#{post.id}@https://obscure-thicket-93550.herokuapp.com/>"
    headers["References"] = "<post/#{post.id}@https://obscure-thicket-93550.herokuapp.com/>"

    @post = post

    mail(to: post.user.email, subject: "New favorite on #{post.title}.")
  end
end

module UsersHelper
  def user_has_posts(user)
    if @user.posts.any?
      render @user.posts
    else
      "#{@user.name} has not submitted any posts yet."
    end
  end

  def user_has_comments(user)
    if @user.comments.any?
      render @user.comments
    else
      "#{@user.name} has not submitted any comments yet."
    end
  end

  def user_has_favorites(user)
    if @user.favorites.any?
      render partial: 'users/favorites'
    else
      "#{@user.name} has not favorited any posts yet."
    end
  end
end

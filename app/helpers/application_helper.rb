module ApplicationHelper
  def form_group_tag(errors, &block)
    css_class = 'form-group'
    css_class << ' has-error' if errors.any?
    content_tag :div, capture(&block), class: css_class
  end

  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  end

  def user_and_admin? 
    current_user && current_user.admin?
  end

  def user_and_admin_or_moderator? (post = nil)
    current_user && current_user.admin? || current_user.moderator?
  end
end

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

  # def avatar_url(user)
  #   default_url = “app/assets/images/profile_default.png”
  #
  #   if(user.present?)
  #     gravatar_id = Digest::MD5::hexdigest(user.email).downcase
  #     "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  #   else
  #     return default_url
  #   end
  # end
end

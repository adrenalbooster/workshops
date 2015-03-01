module UsersHelper
# Returns the Gravatar for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: "#{ user.firstname } #{ user.lastname }".strip, class: "gravatar")
  end
  def name(user)
      "#{ user.firstname } #{ user.lastname }".strip
  end
end
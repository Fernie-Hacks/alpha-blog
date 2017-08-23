module ApplicationHelper
  def gravatar_for(user, options = { size: 80})
    #Gravatar Example for Ruby
    #https://en.gravatar.com/site/implement/images/ruby/
    #Gravatar urls works from Digest MD5 hash of the user's email
    #Ruby implements that using a hexdigest method
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    #img-class is a default bootstrap class
    image_tag(gravatar_url, alt: user.username, class: "img-circle")
  end
end

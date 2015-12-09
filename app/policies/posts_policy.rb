class PostsPolicy

  def initialize(user, post)
    @user = user
    @post = post
  end

  def access?()
    @user == @post.user
  end

end
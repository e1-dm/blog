class CommentsPolicy
  def initialize(user, comment)
    @comment = comment
    @user = user
  end

  def edit?
    @user == @comment.user
  end
end
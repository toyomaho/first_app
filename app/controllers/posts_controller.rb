class PostsController < ApplicationController

  def index # indexアクションを定義した
    #@post = Post.find(1) # 1番目のレコードを@postに代入
    @posts = Post.all  # すべてのレコードを@postsに代入 
  end

  def new
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end

end

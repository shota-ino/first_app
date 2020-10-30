class PostsController < ApplicationController

  def index  # indexアクションを定義した
    # @post = "これはコントローラーで定義したインスタンス変数を確認するための文字列です"
    # @post = Post.find(1)  # 1番目のレコードを@postに代入
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end

end

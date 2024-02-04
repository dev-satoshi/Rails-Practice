class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]

  # トップページ
  def index
    @posts = Post.all
  end

  # 投稿ページ
  def new
    @post = Post.new
  end

  def create
    # 新しい投稿
    @post = Post.new(post_params)

    # データベースに保存された場合/postsにリダイレクト
    # 保存されていない場合、/posts/newを表示する
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end

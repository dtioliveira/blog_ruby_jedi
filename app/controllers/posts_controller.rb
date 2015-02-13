class PostsController < ApplicationController

  before_action :authenticate_admin!, only: [:edit, :update, :destroy]
  before_action :set_post, only: [:edit, :update, :destroy, :show]

  respond_to :html, :json

  def index
    @posts = Post.all.order(created_at: :desc)
    respond_with(@posts, location: posts_url)
  end

  def new
    @post = Post.new
    respond_with(@post)
  end

  def create
    @post = current_admin.posts.new(post_params)

    flash[:notice] = "Post criado com sucesso." if @post.save
    respond_with(@post)
  end

  def show
    respond_with(@post)
  end

  def edit
  end

  def update
    flash[:notice] = "Post atualizado com sucesso." if @post.update(post_params)
    respond_with(@post, location: post_url(@post))
  end

  def destroy
    flash[:notice] = "Post removido com sucesso." if @post.destroy
    respond_with(@post, location: posts_url)
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end

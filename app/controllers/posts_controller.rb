class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    # @posts = Post.paginate(page: params[:page], per_page: 5).search(params[:search])
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      images = params[:post][:images]

      if images
        images.each do |image|
          @post.images.attach(image)
        end
      end

      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @post.destroy
    redirect_to root_path, notice: 'Post deleted.'
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :tag_list, images: [])
  end

  def set_post
    @post = Post.find(params[:id])
  end
end

class PostsController < ApplicationController
  def index
    @posts = Post.paginate(page: params[:page], per_page: 5).search(params[:search])
  end

  def create
     byebug
    @post = current_user.posts.build(post_params)
    if @post.save
      params[:images]['image'].each do |image|
        @post.images.create(image: image)
      end
      redirect_to @post
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :tag_list, images: [])
  end
end

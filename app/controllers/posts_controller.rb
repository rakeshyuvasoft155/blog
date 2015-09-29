class PostsController < ApplicationController
	before_action :set_posts, only: [:show, :edit, :update, :destroy]
	before_action :set_all, only: [:index, :create, :update]
	def index

  end
  def show
  
  end
  def new
    @post = Post.new
    respond_to do |format|
      format.js 
    end
  end
  def create
    @post = Post.create(post_params)
  end
  def edit
    
    respond_to do |format|
      format.js 
    end
  end
  def update
    @post.update_attributes(post_params)
  end
  def delete
    @post = Post.find(params[:post_id])
  end
  def destroy
    @post.destroy
    redirect_to @post
  end
	private
		def set_all
      @posts = Post.all
    end
    def set_posts
      @post = Post.find(params[:id])
    end
		def post_params
  		params.require(:post).permit!  	
		end 		
end


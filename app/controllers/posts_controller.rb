class PostsController < ApplicationController
  def index
    # para ordenar de ultimo a primero
    @lista_posts = Post.all.order(created_at: :desc)
    
    
  end

  def new
  end
  def create
    @new_post = Post.new(
      title: 
      params[:title],
      content: params[:content],
      image_url: params[:image_url]
      
    )
    if @new_post.save
      #redirigir a la lista de post 
      redirect_to action: :index
    else
      # pedir prestado la vista new 
      render :new
    end
    
  end
  
end

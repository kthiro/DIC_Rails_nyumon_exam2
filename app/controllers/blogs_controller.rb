class BlogsController < ApplicationController
  
  before_action :set_blog, only: [ :edit, :update, :destroy]
  
  def new
    if params[:back]
      @blog = Blog.new(blog_params)
    else
      @blog = Blog.new
    end
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to blogs_path, notice: 'ブログを作成しました！'
  end

  def confirm
    @blog = Blog.new(blog_params)
    render :new if @blog.invalid?
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: 'ブログを更新しました！'
    else
      render 'edit'
    end
  end

  def index
    @blogs = Blog.all
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice: 'ブログを削除しました！'
  end
  
  
  private
  
  def blog_params
    params.require( :blog).permit( :title, :content)
  end
  
  def set_blog
    @blog = Blog.find(params[:id])
  end
  
end
class CategoriesController < ApplicationController
   before_action :admin_user, only: [:edit, :update]
  def new
    @categories = Category.new
  end

  def edit
    @category = Category.find_by(id: params[:id])
    @categories = Category.all
    @images = @category.images
  end
def create
    @category = Category.new(category_params)

    if @category.save
      flash[:success] = "Category Created"

      redirect_to root_path
    else 
      render 'new'
    end
  end
  

  def update
    @category = Category.find_by(id: params[:id]) 
    if @category.update(category_params)
      flash[:success] = "Category updated"

      redirect_to category_path(params[:id])
    else 
      render 'new'
    end
  end

  def show
    @category = Category.find_by(id: params[:id])
    @categories = Category.all
    @images = @category.images
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy

    flash[:success] = "Category Removed"
    redirect_to images_path
  end
  private
  def category_params
     params.require(:category).permit(:name, :id)
  end

  def admin_user
    if current_user.admin?
       flash[:success] = "Admin User"
    else
      redirect_to root_path
      flash[:danger] = "You don't have access to this functionality"
    end
  end
end

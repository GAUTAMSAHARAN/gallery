class ImagesController < ApplicationController
  def new
  	@image = Image.new
  end

  def create
  	@image = Image.new(image_params)
  	if @image.save
     flash[:success] = "Image Saved"

     redirect_to root_path
    else
     render "new"  		
  	end
  end

  def destroy
    @image=Image.find_by(id: params[:id])
    @image.destroy

    flash[:success] = "Image deleted"

    redirect_to images_path
  end

  def index
    @image=Image.find_by(id: params[:id])
  	@images = Image.all
  	@categories = Category.all
  end
  private
  def image_params
    params.require(:image).permit(:image, :category_id, :image_title, :image_description, :image_file_size, :image_content_type,  :user_id)
  end	
end

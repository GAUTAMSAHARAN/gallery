class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update, :show]
  def show
    @user  = User.find_by(id: params[:id])
    @images = @user.images
  end

  def new
  	@user = User.new
  end

  def edit
   @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
       log_in @user
       flash[:success]="Welcome to the Gallery"
       redirect_to @user
    else
       render 'new'
    end
  end

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  private
   def user_params
     params.require(:user).permit(:name, :username, :age, :gender, :year, :phone_no, :branch, :email, :password, :password_confirmation, :image)
   end

   def correct_user
    @user = User.find(params[:id])
    redirect_to (root_url) unless @user == current_user
   end
end

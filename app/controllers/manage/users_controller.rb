class Manage::UsersController < Manage::BaseController

  def index
    @page     = (params[:page] || 1).to_i
    @per_page = (params[:per_page] || 10).to_i
    @users = User.page(@page).order("admin desc").order("active desc").order("lastname asc").order("firstname asc").per_page(@per_page)
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find params[:id]
  end

  def show
    @user = User.find params[:id]
  end

  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to manage_users_url, notice: "User created"
    else
      render :new, alert: "Error creating user"
    end
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes params[:user]
      redirect_to manage_users_url, notice: "User updated"
    else
      render :new, alert: "Error updating user"
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to manage_users_url, notice: "User removed"
  end


end

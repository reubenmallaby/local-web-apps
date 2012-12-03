class Manage::BaseController < ApplicationController

  layout 'manage'

  before_filter :check_admin



  protected

  def check_admin
    redirect_to root_url unless signed_in? and current_user.admin
  end

end

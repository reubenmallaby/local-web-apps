class Manage::SettingsController < Manage::BaseController

  def show

  end

  def update
    Settings.site_title = params[:site_title]
    Settings.nginx_conf_path = params[:nginx_conf_path]
    Settings.apache_conf_path = params[:apache_conf_path]
    Settings.www_path = params[:www_path]

    Settings.save!
    Settings.reload!

    redirect_to manage_settings_url
  end

end


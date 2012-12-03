class ProjectsController < ApplicationController

  def index
    @year = (params[:year] || Date.today.year).to_i

    @available_years = SchoolYear.order("value asc").select("DISTINCT value")

    @years = SchoolYear.where(:value => @year).order("semestre desc").includes(:projects)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

end

class Manage::ProjectsController <  Manage::BaseController

  before_filter :get_defaults, :except => [:index, :destroy]

  def index
    @year = (params[:year] || Date.today.year).to_i

    #@years = SchoolYear.where(:value => @year).order("semestre desc").includes(:projects)
    @projects = Project.joins(:school_year).where("school_years.value = ?", @year).order("school_years.semestre desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  def new
    @project = Project.new
    session[:count] = 1
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  def edit
    @project = Project.find(params[:id])
    session[:count] = @project.users.count + 1
  end

  def create
    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to manage_projects_url, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @project = Project.find(params[:id])


    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to manage_projects_url, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to manage_projects_url }
      format.json { head :no_content }
    end
  end

  def add_student
    @users = User.where(:active => true).where(:admin => false).order("lastname asc").order("firstname asc")
    session[:count] += 1
  end

  protected

  def get_defaults
    @years = SchoolYear.order("value desc").order("semestre desc")
    @users = User.where(:active => true).where(:admin => false).order("lastname asc").order("firstname asc")
  end

end

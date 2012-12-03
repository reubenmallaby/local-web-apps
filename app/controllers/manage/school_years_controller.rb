class Manage::SchoolYearsController < Manage::BaseController

  def index
    @years = SchoolYear.order("value desc").order("semestre desc")
  end

  def new
    @school_year = SchoolYear.new
    @school_year.value = Date.today.year
  end

  def edit
    @school_year = SchoolYear.find params[:id]
  end

  def create
    year = params[:school_year][:value]
    @school_year_1 = SchoolYear.new(:value => year, :semestre => 1)
    @school_year_2 = SchoolYear.new(:value => year, :semestre => 2)
    if @school_year_1.save && @school_year_2.save
      redirect_to manage_school_years_url, notice: "Year created"
    else
      render :new, :alert => "Error creating year"
    end
  end

  def update
    @school_year = SchoolYear.find params[:id]
    if @school_year.update_attributes params[:school_year]
      redirect_to manage_school_years_url, notice: "Year created"
    else
      render :edit, :alert => "Error updating year"
    end
  end

  def destroy
    @school_year = SchoolYear.find params[:id]
    @school_year.destroy
    redirect_to manage_school_years_path, notice: "Year removed"
  end

end

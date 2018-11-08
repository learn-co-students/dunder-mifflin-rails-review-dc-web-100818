class EmployeesController < ApplicationController
  def home
    redirect_to employees_path
  end

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id))
    if @employee.valid?
      @employee.save
      redirect_to employee_path(@employee.dog)
    else
      render :new
  end
   end

  def edit
    @employee = Employee.find(params[:id])
 end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params(:first_name))
    redirect_to employee_path(@employee)
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
 end

  private

  def employee_params(*arg)
    params.require(:employee).permit(*arg)
  end
end

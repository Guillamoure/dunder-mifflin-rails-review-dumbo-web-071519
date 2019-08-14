class EmployeesController < ApplicationController

  before_action :helper_paper_salesmxn_and_accoutant, only: [:show, :update, :edit]

  def index
    @employees = Employee.all
  end


  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def show

  end

  def create
    @employee = Employee.create(employee_params)
    if @employee.valid?
      @employee.errors
      redirect_to @employee
    else
      flash[:errors] = @employee.errors.full_messages
      redirect_to new_employee_path
    end
  end

  def update

    @employee.update(employee_params)
    if @employee.valid?
      redirect_to @employee
    else
      flash[:errors] = @employee.errors.full_messages
      redirect_to edit_employee_path(@employee)
    end
  end

  def edit
    @dogs = Dog.all
  end

  def destroy

  end

  private

  def helper_paper_salesmxn_and_accoutant
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :office, :title, :img_url, :dog_id)
  end
end

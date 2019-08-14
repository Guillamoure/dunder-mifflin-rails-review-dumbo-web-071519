class DogsController < ApplicationController

  before_action :helper_dog, only: [:show]

  def index
    @dogs = Dog.all
  end

  def new

  end

  def show
    @employees = @dog.employees
  end

  def create

  end

  def update

  end

  def edit

  end

  def destroy

  end

  private

  def helper_dog
    @dog = Dog.find(params[:id])
  end

end

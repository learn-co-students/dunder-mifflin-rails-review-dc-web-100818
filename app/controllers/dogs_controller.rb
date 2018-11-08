class DogsController < ApplicationController
  def home
    redirect_to dogs_path
  end

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params(:name, :breed, :age))
    if @dog.valid?
      @dog.save
      redirect_to dog_path(@dog)
    else
      render :new
   end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params(:name))
    redirect_to dog_path(@dog)
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_path
  end

  private

  def dog_params(*arg)
    params.require(:dog).permit(*arg)
  end
end

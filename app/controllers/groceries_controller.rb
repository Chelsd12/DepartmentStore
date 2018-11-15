class GroceriesController < ApplicationController
  before_action :set_grocery, except: [:index, :new, :create]
  
  def index
    @groceries = Grocery.all
  end

  def show
  end

  def new
    @grocery = Grocery.new
    render partial: "form"
  end

  def create
    @grocery = Grocery.new(grocery_params)
    if @grocery.save
      redirect_to groceries_path
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @grocery.update(grocery_params)
      redirect_to groceries_path
    else
      render :edit
    end
  end

  def destroy
    @grocery.destroy
    redirect_to groceries_path
  end

  private
  def set_grocery
    @grocery = Grocery.find(params[:id])
  end

  def grocery_params
    params.require(:name).permit(:name)
  end

end

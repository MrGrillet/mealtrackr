class FoodCategoriesController < ApplicationController
  before_action :set_category, only: [ :show, :edit, :update, :destroy ]

  def index
    @category = FoodCategory.all
  end

  def show
  end

  def new
    @category = FoodCategory.new
  end

  def edit
  end

  def create
    @category = FoodCategory.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Food category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Food category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to category_url, notice: 'Food category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_category
      @category = FoodCategory.find(params[:id])
    end

    def category_params
      params.require(:food_category).permit(
        :name,
        :description,
        :image,
        :colour
      )
    end
end

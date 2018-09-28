class LiquidsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_liquid, only: [ :show, :edit, :update, :destroy ]

  def index
    @liquids = Liquid.all
  end

  def show
  end

  def new
    @liquid = Liquid.new
  end

  def edit
  end

  def create
    @liquid = Liquid.new(liquid_params)

    respond_to do |format|
      if @fluid.save
        format.html { redirect_to @liquid, notice: 'Liquid was successfully created.' }
        format.json { render :show, status: :created, location: @liquid }
      else
        format.html { render :new }
        format.json { render json: @liquid.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @liquid.update(liquid_params)
        format.html { redirect_to @liquid, notice: 'Liquid was successfully updated.' }
        format.json { render :show, status: :ok, location: @liquid }
      else
        format.html { render :edit }
        format.json { render json: @liquid.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @liquid.destroy
    respond_to do |format|
      format.html { redirect_to liquid_url, notice: 'Liquid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_liquid
      @liquid = Liquid.find(params[:id])
    end

    def liquid_params
      params.require(:liquid).permit(
        :name,
        :liquid_category_id,
        :glass_count,
        :description,
        :category,
        :image
      )
    end
end

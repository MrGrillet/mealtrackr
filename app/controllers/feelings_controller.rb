class FeelingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_feeling, only: [ :show, :edit, :update, :destroy ]

  def index
    @feelings = Feeling.all
  end

  def show
  end

  def new
    @feeling = Feeling.new
  end

  def edit
  end

  def create
    @feeling = Feeling.new(feeling_params)
    @feeling.user = current_user

    respond_to do |format|
      if @feeling.save
        format.html { redirect_to @feeling, notice: 'Feeling was successfully created.' }
        format.json { render :show, status: :created, location: @feeling }
      else
        format.html { render :new }
        format.json { render json: @feeling.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @feeling.update(feeling_params)
        format.html { redirect_to @feeling, notice: 'Feeling was successfully updated.' }
        format.json { render :show, status: :ok, location: @feeling }
      else
        format.html { render :edit }
        format.json { render json: @feeling.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @feeling.destroy
    respond_to do |format|
      format.html { redirect_to feeling_url, notice: 'Feeling was successfully destroyed.' }
      format.json { head :no_content }
    end
    redirect_to dashboard_path
  end

  private
    def set_feeling
      @feeling = Feeling.find(params[:id])
    end

    def feeling_params
      params.require(:feeling).permit(
        :title,
        :notes,
        :focus_rating,
        :mood_rating,
        :sleep_rating,
        :pain_rating,
        :physical_symptoms,
        :psychological_symptoms
      )
    end
end

class DotaHeroShowCriteriumModesController < ApplicationController
  before_action :set_dota_hero_show_criterium_mode, only: [:show, :edit, :update, :destroy]

  # GET /dota_hero_show_criterium_modes
  # GET /dota_hero_show_criterium_modes.json
  def index
    @dota_hero_show_criterium_modes = DotaHeroShowCriteriumMode.all
  end

  # GET /dota_hero_show_criterium_modes/1
  # GET /dota_hero_show_criterium_modes/1.json
  def show
    if params[:dota_hero_id]
      @dota_hero = DotaHero.find(params[:dota_hero_id])
    end
    respond_to do |format|
      format.html { render :show }
      format.js { render 'dota_hero_show_criterium_modes/show/replace_current_hero_stats_show' }
    end
  end

  # GET /dota_hero_show_criterium_modes/new
  def new
    @dota_hero_show_criterium_mode = DotaHeroShowCriteriumMode.new
  end

  # GET /dota_hero_show_criterium_modes/1/edit
  def edit
  end

  # POST /dota_hero_show_criterium_modes
  # POST /dota_hero_show_criterium_modes.json
  def create
    @dota_hero_show_criterium_mode = DotaHeroShowCriteriumMode.new(dota_hero_show_criterium_mode_params)

    respond_to do |format|
      if @dota_hero_show_criterium_mode.save
        format.html { redirect_to @dota_hero_show_criterium_mode, notice: 'Dota hero show criterium mode was successfully created.' }
        format.json { render :show, status: :created, location: @dota_hero_show_criterium_mode }
      else
        format.html { render :new }
        format.json { render json: @dota_hero_show_criterium_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dota_hero_show_criterium_modes/1
  # PATCH/PUT /dota_hero_show_criterium_modes/1.json
  def update
    respond_to do |format|
      if @dota_hero_show_criterium_mode.update(dota_hero_show_criterium_mode_params)
        format.html { redirect_to @dota_hero_show_criterium_mode, notice: 'Dota hero show criterium mode was successfully updated.' }
        format.json { render :show, status: :ok, location: @dota_hero_show_criterium_mode }
      else
        format.html { render :edit }
        format.json { render json: @dota_hero_show_criterium_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dota_hero_show_criterium_modes/1
  # DELETE /dota_hero_show_criterium_modes/1.json
  def destroy
    @dota_hero_show_criterium_mode.destroy
    respond_to do |format|
      format.html { redirect_to dota_hero_show_criterium_modes_url, notice: 'Dota hero show criterium mode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dota_hero_show_criterium_mode
      @dota_hero_show_criterium_mode = DotaHeroShowCriteriumMode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dota_hero_show_criterium_mode_params
      params.require(:dota_hero_show_criterium_mode).permit(:name)
    end
end

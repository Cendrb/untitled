class DotaHeroShowCriteriaController < ApplicationController
  before_action :set_dota_hero_show_criterium, only: [:show, :edit, :update, :destroy]

  # GET /dota_hero_show_criteria
  # GET /dota_hero_show_criteria.json
  def index
    @dota_hero_show_criteria = DotaHeroShowCriterium.all
  end

  # GET /dota_hero_show_criteria/1
  # GET /dota_hero_show_criteria/1.json
  def show
  end

  # GET /dota_hero_show_criteria/new
  def new
    @dota_hero_show_criterium = DotaHeroShowCriterium.new
  end

  # GET /dota_hero_show_criteria/1/edit
  def edit
  end

  # POST /dota_hero_show_criteria
  # POST /dota_hero_show_criteria.json
  def create
    @dota_hero_show_criterium = DotaHeroShowCriterium.new(dota_hero_show_criterium_params)

    respond_to do |format|
      if @dota_hero_show_criterium.save
        format.html { redirect_to @dota_hero_show_criterium, notice: 'Dota hero show criterium was successfully created.' }
        format.json { render :show, status: :created, location: @dota_hero_show_criterium }
        format.js { render 'dota_hero_show_criteria/criteria_modes/replace_form' }
      else
        format.html { render :new }
        format.json { render json: @dota_hero_show_criterium.errors, status: :unprocessable_entity }
        format.js { render 'dota_hero_show_criteria/criteria_modes/form_invalid_values' }
      end
    end
  end

  # PATCH/PUT /dota_hero_show_criteria/1
  # PATCH/PUT /dota_hero_show_criteria/1.json
  def update
    respond_to do |format|
      if @dota_hero_show_criterium.update(dota_hero_show_criterium_params)
        format.html { redirect_to @dota_hero_show_criterium, notice: 'Dota hero show criterium was successfully updated.' }
        format.json { render :show, status: :ok, location: @dota_hero_show_criterium }
        format.js { render 'dota_hero_show_criteria/criteria_modes/replace_form' }
      else
        format.html { render :edit }
        format.json { render json: @dota_hero_show_criterium.errors, status: :unprocessable_entity }
        format.js { render 'dota_hero_show_criteria/criteria_modes/form_invalid_values' }
      end
    end
  end

  # DELETE /dota_hero_show_criteria/1
  # DELETE /dota_hero_show_criteria/1.json
  def destroy
    @dota_hero_show_criterium.destroy
    respond_to do |format|
      format.html { redirect_to dota_hero_show_criteria_url, notice: 'Dota hero show criterium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dota_hero_show_criterium
      @dota_hero_show_criterium = DotaHeroShowCriterium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dota_hero_show_criterium_params
      params.require(:dota_hero_show_criterium).permit(:name, :show_always, :upper_limit, :lower_limit, :dota_hero_show_criterium_mode_id, :sorting_order)
    end
end

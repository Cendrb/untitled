require 'open-uri'

class DotaHeroesController < ApplicationController
  before_action :set_dota_hero, only: [:show, :edit, :update, :destroy]

  # GET /dota_heroes
  # GET /dota_heroes.json
  def index
    @dota_heroes = DotaHero.all
  end

  # GET /dota_heroes/1
  # GET /dota_heroes/1.json
  def show
  end

  # GET /dota_heroes/new
  def new
    @dota_hero = DotaHero.new
  end

  # GET /dota_heroes/1/edit
  def edit
  end

  # POST /dota_heroes
  # POST /dota_heroes.json
  def create
    @dota_hero = DotaHero.new(dota_hero_params)

    respond_to do |format|
      if @dota_hero.save
        format.html { redirect_to @dota_hero, notice: 'Dota hero was successfully created.' }
        format.json { render :show, status: :created, location: @dota_hero }
      else
        format.html { render :new }
        format.json { render json: @dota_hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dota_heroes/1
  # PATCH/PUT /dota_heroes/1.json
  def update
    respond_to do |format|
      if @dota_hero.update(dota_hero_params)
        format.html { redirect_to @dota_hero, notice: 'Dota hero was successfully updated.' }
        format.json { render :show, status: :ok, location: @dota_hero }
      else
        format.html { render :edit }
        format.json { render json: @dota_hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dota_heroes/1
  # DELETE /dota_heroes/1.json
  def destroy
    @dota_hero.destroy
    respond_to do |format|
      format.html { redirect_to dota_heroes_url, notice: 'Dota hero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def load_from_gamepedia
    # remove all the previous ones
    DotaHero.destroy_all

    # create parseable document
    doc = Nokogiri::HTML(open('http://dota2.gamepedia.com/Table_of_hero_attributes'))

    table = doc.at_css('table')
    rows = table.css('tr')
    rows.shift

    rows.each do |row|
      cols = row.css('td')
      hero = DotaHero.new
      hero.name = cols[0].at_xpath('./*[1]/*[2]').content
      hero.main_attribute = cols[1].at_xpath('./*[1]/*[1]/attribute::title').value.downcase
      hero.str_base = cols[2].content
      hero.str_gain = cols[3].content
      hero.agi_base = cols[4].content
      hero.agi_gain = cols[5].content
      hero.int_base = cols[6].content
      hero.int_gain = cols[7].content
      hero.movement_speed = cols[11].content
      hero.armor = cols[12].content
      hero.dmg_min = cols[13].content
      hero.dmg_max = cols[14].content
      hero.attack_range = cols[15].content
      hero.base_attack_time = cols[16].content
      hero.attack_point = cols[17].content
      hero.attack_backswing = cols[18].content
      hero.vision_day = cols[19].content.delete(',').to_i
      hero.vision_night = cols[20].content.delete(',').to_i
      hero.turn_rate = cols[21].content
      hero.collision_size = cols[22].content
      hero.health_regen = cols[23].content
      hero.save!
    end

    redirect_to dota_heroes_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dota_hero
      @dota_hero = DotaHero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dota_hero_params
      params.require(:dota_hero).permit(:name, :main_attribute, :str_base, :str_gain, :agi_base, :agi_gain, :int_base, :int_gain, :movement_speed, :armor, :dmg_min, :dmg_max, :attack_range, :base_attack_time, :attack_point, :attack_backswing, :vision_day, :vision_night, :turn_rate, :collision_size, :health_regen)
    end
end

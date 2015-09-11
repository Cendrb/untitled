class ChunkerEndingsController < ApplicationController
  before_action :set_chunker_ending, only: [:show, :edit, :update, :destroy]

  # GET /chunker_endings
  # GET /chunker_endings.json
  def index
    @chunker_endings = ChunkerEnding.all
  end

  # GET /chunker_endings/1
  # GET /chunker_endings/1.json
  def show
  end

  # GET /chunker_endings/new
  def new
    @chunker_ending = ChunkerEnding.new
  end

  # GET /chunker_endings/1/edit
  def edit
  end

  # POST /chunker_endings
  # POST /chunker_endings.json
  def create
    @chunker_ending = ChunkerEnding.new(chunker_ending_params)

    respond_to do |format|
      if @chunker_ending.save
        format.html { redirect_to chunker_endings_path, notice: 'Chunker ending was successfully created.' }
        format.json { render :show, status: :created, location: @chunker_ending }
      else
        format.html { render :new }
        format.json { render json: @chunker_ending.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chunker_endings/1
  # PATCH/PUT /chunker_endings/1.json
  def update
    respond_to do |format|
      if @chunker_ending.update(chunker_ending_params)
        format.html { redirect_to @chunker_ending, notice: 'Chunker ending was successfully updated.' }
        format.json { render :show, status: :ok, location: @chunker_ending }
      else
        format.html { render :edit }
        format.json { render json: @chunker_ending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chunker_endings/1
  # DELETE /chunker_endings/1.json
  def destroy
    @chunker_ending.destroy
    respond_to do |format|
      format.html { redirect_to chunker_endings_url, notice: 'Chunker ending was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chunker_ending
      @chunker_ending = ChunkerEnding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chunker_ending_params
      params.require(:chunker_ending).permit(:name)
    end
end

class ChunkerVerbsController < ApplicationController
  before_action :set_chunker_verb, only: [:show, :edit, :update, :destroy]

  # GET /chunker_verbs
  # GET /chunker_verbs.json
  def index
    @chunker_verbs = ChunkerVerb.all.order(:name)
  end

  # GET /chunker_verbs/1
  # GET /chunker_verbs/1.json
  def show
  end

  # GET /chunker_verbs/new
  def new
    @chunker_verb = ChunkerVerb.new
  end

  # GET /chunker_verbs/1/edit
  def edit
  end

  def multi_new

  end

  def multi_create
    @data = params[:string].tr!("\"", '').split(",")
    @data.each do |zidan|
      ChunkerVerb.create(name: zidan)
    end
    redirect_to chunker_verbs_path
  end

  # POST /chunker_verbs
  # POST /chunker_verbs.json
  def create
    @chunker_verb = ChunkerVerb.new(chunker_verb_params)

    respond_to do |format|
      if @chunker_verb.save
        format.html { redirect_to chunker_verbs_path, notice: 'Chunker verb was successfully created.' }
        format.json { render :show, status: :created, location: @chunker_verb }
      else
        format.html { render :new }
        format.json { render json: @chunker_verb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chunker_verbs/1
  # PATCH/PUT /chunker_verbs/1.json
  def update
    respond_to do |format|
      if @chunker_verb.update(chunker_verb_params)
        format.html { redirect_to @chunker_verb, notice: 'Chunker verb was successfully updated.' }
        format.json { render :show, status: :ok, location: @chunker_verb }
      else
        format.html { render :edit }
        format.json { render json: @chunker_verb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chunker_verbs/1
  # DELETE /chunker_verbs/1.json
  def destroy
    @chunker_verb.destroy
    respond_to do |format|
      format.html { redirect_to chunker_verbs_url, notice: 'Chunker verb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chunker_verb
      @chunker_verb = ChunkerVerb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chunker_verb_params
      params.require(:chunker_verb).permit(:name)
    end
end

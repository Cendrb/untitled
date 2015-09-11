class ChunkerSubjectsController < ApplicationController
  before_action :set_chunker_subject, only: [:show, :edit, :update, :destroy]

  # GET /chunker_subjects
  # GET /chunker_subjects.json
  def index
    @chunker_subjects = ChunkerSubject.all.order(:name)
  end

  # GET /chunker_subjects/1
  # GET /chunker_subjects/1.json
  def show
  end

  # GET /chunker_subjects/new
  def new
    @chunker_subject = ChunkerSubject.new
  end

  # GET /chunker_subjects/1/edit
  def edit
  end

  def multi_new

  end

  def multi_create
    @data = params[:string].tr!("\"", '').split(",")
    @data.each do |zidan|
      ChunkerSubject.create(name: zidan)
    end
    redirect_to chunker_subjects_path
  end

  # POST /chunker_subjects
  # POST /chunker_subjects.json
  def create
    @chunker_subject = ChunkerSubject.new(chunker_subject_params)

    respond_to do |format|
      if @chunker_subject.save
        format.html { redirect_to chunker_subjects_path, notice: 'Chunker subject was successfully created.' }
        format.json { render :show, status: :created, location: @chunker_subject }
      else
        format.html { render :new }
        format.json { render json: @chunker_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chunker_subjects/1
  # PATCH/PUT /chunker_subjects/1.json
  def update
    respond_to do |format|
      if @chunker_subject.update(chunker_subject_params)
        format.html { redirect_to @chunker_subject, notice: 'Chunker subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @chunker_subject }
      else
        format.html { render :edit }
        format.json { render json: @chunker_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chunker_subjects/1
  # DELETE /chunker_subjects/1.json
  def destroy
    @chunker_subject.destroy
    respond_to do |format|
      format.html { redirect_to chunker_subjects_url, notice: 'Chunker subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chunker_subject
      @chunker_subject = ChunkerSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chunker_subject_params
      params.require(:chunker_subject).permit(:name)
    end
end

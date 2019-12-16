class NotsController < ApplicationController
  before_action :set_not, only: [:show, :edit, :update, :destroy]

  # GET /nots
  # GET /nots.json
  def index
    @nots = Not.all
  end

  # GET /nots/1
  # GET /nots/1.json
  def show
  end

  # GET /nots/new
  def new
    @not = Not.new
  end

  # GET /nots/1/edit
  def edit
  end

  # POST /nots
  # POST /nots.json
  def create
    @not = Not.new(not_params)

    respond_to do |format|
      if @not.save
        format.html { redirect_to @not, notice: 'Not was successfully created.' }
        format.json { render :show, status: :created, location: @not }
      else
        format.html { render :new }
        format.json { render json: @not.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nots/1
  # PATCH/PUT /nots/1.json
  def update
    respond_to do |format|
      if @not.update(not_params)
        format.html { redirect_to @not, notice: 'Not was successfully updated.' }
        format.json { render :show, status: :ok, location: @not }
      else
        format.html { render :edit }
        format.json { render json: @not.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nots/1
  # DELETE /nots/1.json
  def destroy
    @not.destroy
    respond_to do |format|
      format.html { redirect_to nots_url, notice: 'Not was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_not
      @not = Not.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def not_params
      params.require(:not).permit(:title, :content, :course_id)
    end
end

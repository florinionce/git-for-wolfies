class WolfiesController < ApplicationController
  before_action :set_wolfy, only: [:show, :edit, :update, :destroy]

  # GET /wolfies
  # GET /wolfies.json
  def index
    @wolfies = Wolfy.all
  end

  # GET /wolfies/1
  # GET /wolfies/1.json
  def show
  end

  # GET /wolfies/new
  def new
    @wolfy = Wolfy.new
  end

  # GET /wolfies/1/edit
  def edit
  end

  # POST /wolfies
  # POST /wolfies.json
  def create
    @wolfy = Wolfy.new(wolfy_params)

    respond_to do |format|
      if @wolfy.save
        format.html { redirect_to @wolfy, notice: 'Wolfy was successfully created.' }
        format.json { render :show, status: :created, location: @wolfy }
      else
        format.html { render :new }
        format.json { render json: @wolfy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wolfies/1
  # PATCH/PUT /wolfies/1.json
  def update
    respond_to do |format|
      if @wolfy.update(wolfy_params)
        format.html { redirect_to @wolfy, notice: 'Wolfy was successfully updated.' }
        format.json { render :show, status: :ok, location: @wolfy }
      else
        format.html { render :edit }
        format.json { render json: @wolfy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wolfies/1
  # DELETE /wolfies/1.json
  def destroy
    @wolfy.destroy
    respond_to do |format|
      format.html { redirect_to wolfies_url, notice: 'Wolfy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wolfy
      @wolfy = Wolfy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wolfy_params
      params.require(:wolfy).permit(:name, :wolfie_level, :dob)
    end
end

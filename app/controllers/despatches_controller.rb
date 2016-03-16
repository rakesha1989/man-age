class DespatchesController < ApplicationController
  before_action :set_despatch, only: [:show, :edit, :update, :destroy]

  # GET /despatches
  # GET /despatches.json
  def index
    @despatches = Despatch.all
  end

  # GET /despatches/1
  # GET /despatches/1.json
  def show
  end

  # GET /despatches/new
  def new
    @despatch = Despatch.new
  end

  # GET /despatches/1/edit
  def edit
  end

  # POST /despatches
  # POST /despatches.json
  def create
    @despatch = Despatch.new(despatch_params)

    respond_to do |format|
      if @despatch.save
        format.html { redirect_to @despatch, notice: 'Despatch was successfully created.' }
        format.json { render :show, status: :created, location: @despatch }
      else
        format.html { render :new }
        format.json { render json: @despatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /despatches/1
  # PATCH/PUT /despatches/1.json
  def update
    respond_to do |format|
      if @despatch.update(despatch_params)
        format.html { redirect_to @despatch, notice: 'Despatch was successfully updated.' }
        format.json { render :show, status: :ok, location: @despatch }
      else
        format.html { render :edit }
        format.json { render json: @despatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /despatches/1
  # DELETE /despatches/1.json
  def destroy
    @despatch.destroy
    respond_to do |format|
      format.html { redirect_to despatches_url, notice: 'Despatch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_despatch
      @despatch = Despatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def despatch_params
      params.require(:despatch).permit(:day, :product_id, :quantity, :unit, :client_id, :d_c_number)
    end
end

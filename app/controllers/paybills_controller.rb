class PaybillsController < ApplicationController

  load_and_authorize_resource

  before_action :set_paybill, only: [:show, :edit, :update, :destroy]

  # GET /paybills
  # GET /paybills.json
  def index
    @pay_bills = PayBill.all
    #@pay_bills = (current_user.role? "director") ? PayBill.all.order(payment_date: :desc)  : current_user.pay_bills.order(payment_date: :desc)
  end

  def show
    #@pay_bill = (current_user.role? "director") ? PayBill.find(params[:id]) : current_user.pay_bills.find(params[:id]) 
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "PayBill" 
      end
    end
  end

  # GET /paybills/new
  def new
    @paybill = Paybill.new
  end

  # GET /paybills/1/edit
  def edit
  end

  # POST /paybills
  # POST /paybills.json
  def create
    @paybill = Paybill.new(paybill_params)

    respond_to do |format|
      if @paybill.save
        format.html { redirect_to @paybill, notice: 'Paybill was successfully created.' }
        format.json { render :show, status: :created, location: @paybill }
      else
        format.html { render :new }
        format.json { render json: @paybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paybills/1
  # PATCH/PUT /paybills/1.json
  def update
    respond_to do |format|
      if @paybill.update(paybill_params)
        format.html { redirect_to @paybill, notice: 'Paybill was successfully updated.' }
        format.json { render :show, status: :ok, location: @paybill }
      else
        format.html { render :edit }
        format.json { render json: @paybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paybills/1
  # DELETE /paybills/1.json
  def destroy
    @paybill.destroy
    respond_to do |format|
      format.html { redirect_to paybills_url, notice: 'Paybill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paybill
      @paybill = Paybill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paybill_params
      params.require(:paybill).permit(:supplier_id, :payment_method, :payment_date, :bill_no, :refernce_no, :description, :amount, :float)
    end
end

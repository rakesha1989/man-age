class RecievePaymentsController < ApplicationController
  before_action :set_recieve_payment, only: [:show, :edit, :update, :destroy]

  # GET /recieve_payments
  # GET /recieve_payments.json
  def index
    @recieve_payments = RecievePayment.all
  end

  # GET /recieve_payments/1
  # GET /recieve_payments/1.json
  def show
  end

  # GET /recieve_payments/new
  def new
    @recieve_payment = RecievePayment.new
  end

  # GET /recieve_payments/1/edit
  def edit
  end

  # POST /recieve_payments
  # POST /recieve_payments.json
  def create
    @recieve_payment = RecievePayment.new(recieve_payment_params)

    respond_to do |format|
      if @recieve_payment.save
        format.html { redirect_to @recieve_payment, notice: 'Recieve payment was successfully created.' }
        format.json { render :show, status: :created, location: @recieve_payment }
      else
        format.html { render :new }
        format.json { render json: @recieve_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recieve_payments/1
  # PATCH/PUT /recieve_payments/1.json
  def update
    respond_to do |format|
      if @recieve_payment.update(recieve_payment_params)
        format.html { redirect_to @recieve_payment, notice: 'Recieve payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @recieve_payment }
      else
        format.html { render :edit }
        format.json { render json: @recieve_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recieve_payments/1
  # DELETE /recieve_payments/1.json
  def destroy
    @recieve_payment.destroy
    respond_to do |format|
      format.html { redirect_to recieve_payments_url, notice: 'Recieve payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recieve_payment
      @recieve_payment = RecievePayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recieve_payment_params
      params.require(:recieve_payment).permit(:client_id, :invoice_id, :email, :payment_date, :payment_method, :reference_no, :amount_recieved, :deposited_to)
    end
end

class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @payments = Payment.all
    respond_with(@payments)
  end

  def show
    respond_with(@payment)
  end

  def new
    @payment = Payment.new
    @types = Hash.new
    Paymenttype.all.each { |t| @types[t.typename] = t.id }
    @payment.user = current_user
    respond_with(@payment,@types)
  end

  def edit
    @types = Hash.new
    Paymenttype.all.each { |t| @types[t.typename] = t.id }
    @payment.user = current_user
    respond_with(@payment,@types)
  end

  def create
    @payment = Payment.new(payment_params)
    @payment.user = current_user
    @payment.save
    respond_with(@payment)
  end

  def update
    @payment.update(payment_params)
    respond_with(@payment)
  end

  def destroy
    @payment.destroy
    respond_with(@payment)
  end

  private
    def set_payment
      @payment = Payment.find(params[:id])
    end

    def payment_params
      params.require(:payment).permit(:paymenttype_id, :start_date, :end_date, :amount, :user)
    end
end

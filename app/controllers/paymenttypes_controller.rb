class PaymenttypesController < ApplicationController
  before_action :set_paymenttype, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @paymenttypes = Paymenttype.all
    respond_with(@paymenttypes)
  end

  def show
    respond_with(@paymenttype)
  end

  def new
    @paymenttype = Paymenttype.new
    respond_with(@paymenttype)
  end

  def price
    price = Paymenttype.all;
    render :json => price
  end

  def edit
  end

  def create
    @paymenttype = Paymenttype.new(paymenttype_params)
    @paymenttype.save
    respond_with(@paymenttype)
  end

  def update
    @paymenttype.update(paymenttype_params)
    respond_with(@paymenttype)
  end

  def destroy
    @paymenttype.destroy
    respond_with(@paymenttype)
  end

  private
    def set_paymenttype
      @paymenttype = Paymenttype.find(params[:id])
    end

    def paymenttype_params
      params.require(:paymenttype).permit(:typename, :price)
    end
end

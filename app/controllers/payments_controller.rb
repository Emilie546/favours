class PaymentsController < ApplicationController
  def new
    @favour = Favour.find(params[:favour_id])
    @payment = Payment.new()
  end

  def create
    @favour = Favour.find(params[:favour_id])
    @payment = Payment.new(payment_params)
    @favour.valid?

    # Generate token for credit card
    token = Stripe::Token.create(
      card: {
        number: @payment.card_number,
        exp_month: @payment.exp_month,
        exp_year: @payment.exp_year,
        name: @payment.name,
        cvc: @payment.cvc
      },
    )

    Stripe::Charge.create({
      amount: @favour.price_cents,
      currency: 'chf',
      source: token,
      description: 'My First Test Charge (created for API docs)',
    })
    redirect_to root_path
  end

  private

  def payment_params
    params.require(:payment).permit(:card_number, :exp_month, :exp_year, :name, :cvc)
  end
end

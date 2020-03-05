class PaymentsController < ApplicationController

  def new
    @favour = Favour.find(params[:favour_id])
    @payment = Payment.new()
  end

  def create
    @favour = Favour.find(params[:favour_id])
    @payment = Payment.new(payment_params)
    @favour.valid?

    # Génerer un token pour les cartes de crédit envoyer à Stripe
    token = Stripe::Token.create(
      card: {
        number: @payment.card_number,
        exp_month: @payment.exp_month,
        exp_year: @payment.exp_year,
        name: @payment.name,
        cvc: @payment.cvc
      },
    )

    # Création de la charge avec le montant, l'email etc... du client pour la commande envoyer à Stripe
    Stripe::Charge.create({
      amount: @favour.price_cents * 100,
      currency: 'chf',
      source: token,
      description: @favour.name,
      receipt_email: current_user.email
    })

    redirect_to my_favours_path
  end

  private

  # Params du formulaire de paiement
  def payment_params
    params.require(:payment).permit(:card_number, :exp_month, :exp_year, :name, :cvc)
  end
end

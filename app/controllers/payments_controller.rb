class PaymentsController < ApplicationController

    # Securely calculate the order amount
  def calculate_order_amount(_items)
    # Replace this constant with a calculation of the order's amount
    # Calculate the order total on the server to prevent
    # people from directly manipulating the amount on the client
    1400
  end

  def create_payment_intent
    # Your Stripe-related code here
    # This is where you would create a PaymentIntent and return the client secret
    payment_intent = Stripe::PaymentIntent.create(
      # amount: calculate_order_amount(data['items']),
      amount: 1000,
      currency: 'eur',
      # In the latest version of the API, specifying the `automatic_payment_methods` parameter is optional because Stripe enables its functionality by default.
      automatic_payment_methods: {
        enabled: true
      }
    )

    render json: { client_secret: payment_intent.client_secret }
  end
end

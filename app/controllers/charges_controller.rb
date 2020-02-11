require 'stripe'

class ChargesController < ApplicationController

    def create

        Stripe.api_key = ENV['STRIPE_SECRET_KEY']

        order = Order.find(params[:orderId])
        amount = (order.total * 100).to_i
        customer = order.user.id
        byebug
        charge = Stripe::Charge.create(
            # :customer => customer,
            :amount => amount,
            :description => 'Sweet Spot',
            :currency => 'usd',
            :source => params[:token]
            # :billing_details => {
            #     :email => params[:email],
            #     :name => params[:name],
            #     :phone => params[:phone]
            # }
        )

        rescue Stripe::CardError => e
            flash[:errors] = e.message
            redirect_to charges_path
        end

        # below is from first rails stripe guidee
        # begin
            
        #     customer = Stripe::Customer.create(
        #         :email => current_user.email,
        #         :source => params[:charge][:token]
        #     )

        #     charge = Stripe::Charge.create({
        #         :customer => customer.id,
        #         :amount => params[:charge][:amount],
        #         :description => params[:charge][:description],
        #         :currency => params[:charge][:currency],
        #     }, {
        #     :idempotency_key => ip_key
        #     })

        # rescue => Stripe::CardError => e
        #     render json: { message: 'oops' }, status: :not_acceptable
        # end

end

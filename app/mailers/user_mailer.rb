class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'
 
  def order_confirmation_email(order)
    @order = order
    @url  = 'http://localhost:3000/orders/3'
    mail(to: @order.email, subject: 'Thank you for ordering from Jungle!')
  end
end

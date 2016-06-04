class UserMailer < ApplicationMailer

  def feedback(params)
    @params = params
    mail(to: 'efelikanfuzin@gmail.com',
         subject: 'Новая заявка на сайте')
  end

  def stock_order(params)
    @params = params
    @stock = Stock.where(id: params[:stock_id]).first
    mail(to: 'efelikanfuzin@gmail.com',
         subject: 'Заявка на продукцию')
  end
end

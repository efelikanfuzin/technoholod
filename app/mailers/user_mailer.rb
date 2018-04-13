# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def feedback(params)
    @params = params
    mail(to: 'mobile@tehnoholod.ru',
         subject: 'Новая заявка на сайте')
  end

  def stock_order(params)
    @params = params
    @stock = Stock.where(id: params[:stock_id]).first
    mail(to: 'mobile@tehnoholod.ru',
         subject: 'Заявка на продукцию')
  end
end

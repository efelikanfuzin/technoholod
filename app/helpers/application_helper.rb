# frozen_string_literal: true

module ApplicationHelper
  def last_in_row(index)
    index % 3 == 0 ? 'product_item-last_in_row' : ''
  end
end

require "administrate/fields/base"

class HtmlField < Administrate::Field::Base
  def to_s
    data
  end
end

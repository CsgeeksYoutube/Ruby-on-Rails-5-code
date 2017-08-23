class Subject < ApplicationRecord

  has_many :pages

  scope :visible, lambda {where(:visible => true)}
  scope :invisible, lambda {where(:visible => false)}
  scope :sorted, lambda {order("position ASC")}
  scope :search, lambda {|query| where(["name LIKE ?","%#{query}%"])}

end

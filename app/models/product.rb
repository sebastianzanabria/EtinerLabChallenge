# frozen_string_literal: true

class Product < ApplicationRecord
  include ActiveModel::Validations
  has_many :variants
  accepts_nested_attributes_for :variants
  validates_with AnyRedShoesValidator
  validates_with AnyMediumTshirtValidator
end

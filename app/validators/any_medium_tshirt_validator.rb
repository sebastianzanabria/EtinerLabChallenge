# frozen_string_literal: true

class AnyMediumTshirtValidator < ActiveModel::Validator
  def validate(record)
    if record.category == 'Poleras' && !any_medium_tshirt?(record)
      record.errors.add(:base, 'Las poleras deben tener al menos una variante de talla M.')
    end
  end

  private

  def any_medium_tshirt?(record)
    record.variants.map(&:size).any?('M')
  end
end

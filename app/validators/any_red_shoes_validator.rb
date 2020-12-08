# frozen_string_literal: true

class AnyRedShoesValidator < ActiveModel::Validator
  def validate(record)
    if record.category == 'Zapatos' && !any_red_shoes?(record)
      record.errors.add(:base, 'Los zapatos deben tener al menos una variante de color rojo.')
    end
  end

  private

  def any_red_shoes?(record)
    record.variants.map(&:color).any?('Rojo')
  end
end

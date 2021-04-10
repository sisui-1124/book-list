class Book < ApplicationRecord
  validates :name,  presence: true, lenght: { maximum: 30}
  validates :validate_name_not_including_comma

  private

  def validate_name_not_including_comma
    errors.add(:name,'にカンマを含めることはできません') if name&.include?(',')
  end
end

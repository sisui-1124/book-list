class Book < ApplicationRecord
  before_validation :set_nameless_name
  validates :name,  presence: true
  validate :validate_name_not_including_comma

  belongs_to :user

  private

  def validate_name_not_including_comma
    errors.add(:name,'にカンマを含めることはできません') if name&.include?(',')
  end
  def set_nameless_name
    self.name = '名前無し' if name.blank?
  end
end

class Employee < ApplicationRecord
  belongs_to :dog
  validates :alias, uniqueness: { case_sensitive: false }
  validates :title, uniqueness: { case_sensitive: false }
  validates :first_name, :last_name, presence: true

  def name
    self.first_name + ' ' + self.last_name
  end

end

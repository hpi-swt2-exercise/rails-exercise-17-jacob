class Author < ActiveRecord::Base

  has_and_belongs_to_many :papers

  validates :last_name, presence: true

  def name
    complete_name = self.first_name + ' ' + self.last_name
  end

end

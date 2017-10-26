class Author < ActiveRecord::Base

  def name
    complete_name = self.first_name + ' ' + self.last_name
  end
  
end

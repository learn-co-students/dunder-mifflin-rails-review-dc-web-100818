class Employee < ApplicationRecord
   belongs_to :dog
   validates :first_name, presence: true
    validates :last_name, presence: true
     validates :alias, presence: true
      validates :title, presence: true
       validates :office, presence: true
         validates :img_url, presence: true
          validates :dog_id, presence: true
end

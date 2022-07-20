class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :code_retreat_session
  belongs_to :primary_technology, class_name: "Technology"
  belongs_to :secondary_technology, optional: true, class_name: "Technology"
end

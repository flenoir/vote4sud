class Ville < ActiveRecord::Base
	 has_many :candidats
	 validates :nom, presence: true,
                    length: { minimum: 3 }
end

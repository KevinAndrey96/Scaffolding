class Proyecto < ApplicationRecord
	has_many :patrocinador,  through: :proyecto_patrocinador
	has_one :encargado
	has_one :tutor
end

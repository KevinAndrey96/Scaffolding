class Patrocinador < ApplicationRecord
	has_many: :proyecto, through: : proyecto_patrocinador
end

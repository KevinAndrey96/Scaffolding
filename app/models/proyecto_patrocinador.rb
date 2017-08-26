class ProyectoPatrocinador < ApplicationRecord
  belongs_to :proyecto
  belongs_to :patrocinador
end

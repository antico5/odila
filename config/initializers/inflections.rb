# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
#

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'pais', 'paises'
  inflect.irregular 'denuncia', 'denuncias'
  inflect.irregular 'centro_de_denuncia', 'centro_de_denuncias'
  inflect.irregular 'delito', 'delitos'
  inflect.irregular 'legislacion', 'legislaciones'
  inflect.irregular 'pregunta', 'preguntas'
  inflect.irregular 'opcion', 'opciones'
  inflect.irregular 'item_denuncia', 'item_denuncias'
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end

require 'csv'

namespace :importer do
  desc 'importa centros de denuncia'
  task :centros, [:csv_file] => :environment do |task, params|
    archivo = params[:csv_file] || raise('Debe pasar ruta al archivo CSV.')
    centros = CSV.read(archivo)
    centros[1..-1].each do |row|
      CentroDeDenuncia.find_or_create_by({
        pais_id: row[0],
        ciudad: row[1],
        nombre: row[2],
        direccion: row[3],
        telefonos: row[4],
        website: row[5],
        email: row[6],
        twitter: row[8],
        fiscales: row[9],
        orden: row[10]
      })
    end
  end

  task :legislaciones, [:csv_file] => :environment do |task, params|
    archivo = params[:csv_file] || raise('Debe pasar ruta al archivo CSV.')
    legislaciones = CSV.read(archivo)
    legislaciones[1..-1].each do |row|
      Legislacion.find_or_create_by({
        delito_id: row[0],
        pais_id: row[1],
        texto: row[2],
        numero_ley: row[3..-1].compact.join(', ')
      })
    end
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
puts 'Starting seeding'
puts 'Reading db/seeds/ directory'
files = Dir.glob 'db/seeds/*.yml'
puts "Found #{ files.count } yml files."

files.each do |seed_file|
  puts "Processing #{ seed_file }"
  data = YAML.load_file seed_file
  data.each do |model_class, entity_list|
    model_class = model_class.classify.constantize
    puts "Before: #{ model_class.count } #{ model_class }"
    entity_list.each { |entity_attrs| model_class.find_or_create_by entity_attrs }
    puts "After: #{ model_class.count } #{ model_class }"
  end
end

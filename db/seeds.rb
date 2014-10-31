require 'yaml'

path = Rails.root.join('db/seed_data.yaml')
seed_data = YAML.load File.read path

users = seed_data[:users]
professions = seed_data[:professions]
appointments = seed_data[:appointments]

users.each do |attrs|
  User.new(attrs).save(:validate => false)
end

professions.each do |attrs|
  Profession.new(attrs).save(:validate => false)
end

appointments.each do |attrs|
  Appoint.new(attrs).save(:validate => false)
end

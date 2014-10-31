require 'yaml'

path = Rails.root.join('db/seed_data.yaml')
seed_data = YAML.load File.read path

users = seed_data[:users]
professions = seed_data[:professions]

users.each do |attrs|
  User.new(attrs).save(:validate => false)
end

professions.each do |attrs|
  Profession.new(attrs).save(:validate => false)
end


20.times do
	Professional.create(user_id: User.all.sample.id, profession_id: Profession.all.sample.id)
end


30.times do
	proficiency = Professional.all.sample
	Ticket.create(user_id: User.all.sample.id, proficiency_id: proficiency.id, profession_id: proficiency.profession )
end

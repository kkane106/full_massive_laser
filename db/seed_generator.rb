require_relative '../config/environment'

users = []
professions = []
proficiencies = []
appointments = []

test_user = {
	:name => "sean",
	:email => "test@test.com",
	:password => "password",
}

tables = {
  :users => users,
  :professions => professions,
  :appointments => appointments,
}

users.push test_user


yaml = YAML.dump tables

path = File.join(File.dirname(__FILE__), 'seed_data.yaml')
File.write path, yaml

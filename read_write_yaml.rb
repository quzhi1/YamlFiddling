# frozen_string_literal: true

require 'yaml'

# Write
pets = %w[dog cat hamster]
File.open('pets.yaml', 'w') { |file| file.write(pets.to_yaml) }

# Read
pet_array = YAML.safe_load(File.read('pets.yaml'))
p pet_array

# More write
recipe = { title: 'Coffee',
           ingredients: [{ ingredient_name: 'Water',
                           quantity: 8,
                           unit_of_measurement: 'oz' },
                         { ingredient_name: 'Coffee Grounds',
                           quantity: 1,
                           unit_of_measurement: 'tbsp' }],
           directions: 'Make coffee.' }
File.open('coffee.yaml', 'w') { |file| file.write(recipe.to_yaml) }

# Read it
# Note, must put Symbol so that you can use safe_load
recipe_from_yaml_file = YAML.safe_load(File.read('coffee.yaml'), [Symbol])
p recipe_from_yaml_file

# load_file is much simpler
recipe_from_yaml_file = YAML.load_file('coffee.yaml')
p recipe_from_yaml_file

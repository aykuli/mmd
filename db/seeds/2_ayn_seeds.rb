# frozen_string_literal: true

# Proto Mother
user = User.find_or_initialize_by email: 'a@b.com'
user.password = 'password'
user.first_name = 'Ayn'
user.last_name = 'Sha'
user.save!

# Entities
female_hemoglobin = Entity.find_by code: 'hemoglobin', gender: :female

EntityUserRelation.find_or_create_by! user:, entity: female_hemoglobin
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2022, 8, 24, 12, 40), value: 116, warning: :LOW
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2022, 9, 25, 12, 40), value: 123

female_ferritin = Entity.find_by code: 'ferritin', gender: :female
EntityUserRelation.find_or_create_by! user:, entity: female_ferritin
Measurement.find_or_create_by! user:, entity: female_ferritin, measured_at: DateTime.new(2022, 6, 22), value: 11.55
Measurement.find_or_create_by! user:, entity: female_ferritin, measured_at: DateTime.new(2022, 9, 19), value: 15.65

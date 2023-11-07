# frozen_string_literal: true

ayn = User.find_by(first_name: 'Ayn')
user = User.find_or_create_by! first_name: 'Rus', last_name: nil, parent_id: ayn.id, gender: :male, password_digest: ayn.password_digest

hematokrit = Entity.find_by code: 'hct'
EntityUserRelation.find_or_create_by! user:, entity: hematokrit
Measurement.find_or_create_by! user:, entity: hematokrit, measured_at: DateTime.new(2023, 10, 3), value: 37.4

hemoglobin = Entity.find_by code: 'hemoglobin', gender: :male
EntityUserRelation.find_or_create_by! user:, entity: hemoglobin
Measurement.find_or_create_by! user:, entity: hemoglobin, measured_at: DateTime.new(2023, 10, 3), value: 129

eritrocit = Entity.find_by code: 'rbc'
EntityUserRelation.find_or_create_by! user:, entity: eritrocit
Measurement.find_or_create_by! user:, entity: eritrocit, measured_at: DateTime.new(2023, 10, 3), value: 4.59

mcv = Entity.find_by code: 'mcv'
EntityUserRelation.find_or_create_by! user:, entity: mcv
Measurement.find_or_create_by! user:, entity: mcv, measured_at: DateTime.new(2023, 10, 3), value: 81.4

rdw_cv = Entity.find_by code: 'rdw_cv'
EntityUserRelation.find_or_create_by! user:, entity: rdw_cv
Measurement.find_or_create_by! user:, entity: rdw_cv, measured_at: DateTime.new(2023, 10, 3), value: 13

mch = Entity.find_by code: 'mch'
EntityUserRelation.find_or_create_by! user:, entity: mch
Measurement.find_or_create_by! user:, entity: mch, measured_at: DateTime.new(2023, 10, 3), value: 28.1

mchc = Entity.find_by code: 'mchc'
EntityUserRelation.find_or_create_by! user:, entity: mchc
Measurement.find_or_create_by! user:, entity: mchc, measured_at: DateTime.new(2023, 10, 3), value: 34.5

plt = Entity.find_by code: 'plt'
EntityUserRelation.find_or_create_by! user:, entity: plt
Measurement.find_or_create_by! user:, entity: plt, measured_at: DateTime.new(2023, 10, 3), value: 508, warning: :HIGH

wbc = Entity.find_by code: 'wbc'
EntityUserRelation.find_or_create_by! user:, entity: wbc
Measurement.find_or_create_by! user:, entity: wbc, measured_at: DateTime.new(2023, 10, 3), value: 7.69

neu = Entity.find_by code: 'neu'
EntityUserRelation.find_or_create_by! user:, entity: neu
Measurement.find_or_create_by! user:, entity: neu, measured_at: DateTime.new(2023, 10, 3), value: 2.77

neu_percent = Entity.find_by code: 'neu_percent'
EntityUserRelation.find_or_create_by! user:, entity: neu_percent
Measurement.find_or_create_by! user:, entity: neu_percent, measured_at: DateTime.new(2023, 10, 3), value: 36.1, warning: :HIGH

lym = Entity.find_by code: 'lym'
EntityUserRelation.find_or_create_by! user:, entity: lym
Measurement.find_or_create_by! user:, entity: lym, measured_at: DateTime.new(2023, 10, 3), value: 3.47

lym_percent = Entity.find_by code: 'lym_percent'
EntityUserRelation.find_or_create_by! user:, entity: lym_percent
Measurement.find_or_create_by! user:, entity: lym_percent, measured_at: DateTime.new(2023, 10, 3), value: 45.1, warning: :HIGH

mon = Entity.find_by code: 'mon'
EntityUserRelation.find_or_create_by! user:, entity: mon
Measurement.find_or_create_by! user:, entity: mon, measured_at: DateTime.new(2023, 10, 3), value: 0.68

mon_percent = Entity.find_by code: 'mon_percent'
EntityUserRelation.find_or_create_by! user:, entity: mon_percent
Measurement.find_or_create_by! user:, entity: mon_percent, measured_at: DateTime.new(2023, 10, 3), value: 8.9

eos = Entity.find_by code: 'eos'
EntityUserRelation.find_or_create_by! user:, entity: eos
Measurement.find_or_create_by! user:, entity: eos, measured_at: DateTime.new(2023, 10, 3), value: 0.72, warning: :HIGH

eos_percent = Entity.find_by code: 'eos_percent'
EntityUserRelation.find_or_create_by! user:, entity: eos_percent
Measurement.find_or_create_by! user:, entity: eos_percent, measured_at: DateTime.new(2023, 10, 3), value: 9.3, warning: :HIGH

bas = Entity.find_by code: 'bas'
EntityUserRelation.find_or_create_by! user:, entity: bas
Measurement.find_or_create_by! user:, entity: bas, measured_at: DateTime.new(2023, 10, 3), value: 0.05

bas_percent = Entity.find_by code: 'bas_percent'
EntityUserRelation.find_or_create_by! user:, entity: bas_percent
Measurement.find_or_create_by! user:, entity: bas_percent, measured_at: DateTime.new(2023, 10, 3), value: 0.6

soe = Entity.find_by code: 'soe'
EntityUserRelation.find_or_create_by! user:, entity: soe
Measurement.find_or_create_by! user:, entity: soe, measured_at: DateTime.new(2023, 10, 3), value: 49, warning: :HIGH

sgpt = Entity.find_by code: 'sgpt'
EntityUserRelation.find_or_create_by! user:, entity: sgpt
Measurement.find_or_create_by! user:, entity: sgpt, measured_at: DateTime.new(2023, 10, 3), value: 7
sgot = Entity.find_by code: 'sgot'
EntityUserRelation.find_or_create_by! user:, entity: sgot
Measurement.find_or_create_by! user:, entity: sgot, measured_at: DateTime.new(2023, 10, 3), value: 21

hba1c = Entity.find_by code: 'hba1c'
EntityUserRelation.find_or_create_by! user:, entity: hba1c
Measurement.find_or_create_by! user:, entity: hba1c, measured_at: DateTime.new(2023, 10, 3), value: 5.3

total_protein = Entity.find_by code: 'total_protein'
EntityUserRelation.find_or_create_by! user:, entity: total_protein
Measurement.find_or_create_by! user:, entity: total_protein, measured_at: DateTime.new(2023, 10, 3), value: 72

cholesterin = Entity.find_by code: 'cholesterin'
EntityUserRelation.find_or_create_by! user:, entity: cholesterin
Measurement.find_or_create_by! user:, entity: cholesterin, measured_at: DateTime.new(2023, 10, 3), value: 3.56

Entity.find_by code: 'ferritin', gender: :male

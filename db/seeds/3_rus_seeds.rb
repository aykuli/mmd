# frozen_string_literal: true

ayn = User.find_by(first_name: 'Ayn')
user = User.find_or_create_by! first_name: 'Rus', last_name: nil, parent_id: ayn.id, gender: :male, password_digest: ayn.password_digest, member: 'son'

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
Measurement.find_or_create_by! user:, entity: wbc, measured_at: DateTime.new(2022, 8, 24), value: 6.29

neu = Entity.find_by code: 'neu'
EntityUserRelation.find_or_create_by! user:, entity: neu
Measurement.find_or_create_by! user:, entity: neu, measured_at: DateTime.new(2023, 10, 3), value: 2.77
Measurement.find_or_create_by! user:, entity: neu, measured_at: DateTime.new(2022, 8, 24), value: 3.3

neu_percent = Entity.find_by code: 'neu_percent'
EntityUserRelation.find_or_create_by! user:, entity: neu_percent
Measurement.find_or_create_by! user:, entity: neu_percent, measured_at: DateTime.new(2023, 10, 3), value: 36.1, warning: :HIGH
Measurement.find_or_create_by! user:, entity: neu_percent, measured_at: DateTime.new(2022, 8, 24), value: 52.4

lym = Entity.find_by code: 'lym'
EntityUserRelation.find_or_create_by! user:, entity: lym
Measurement.find_or_create_by! user:, entity: lym, measured_at: DateTime.new(2023, 10, 3), value: 3.47
Measurement.find_or_create_by! user:, entity: lym, measured_at: DateTime.new(2022, 8, 24), value: 2.25

lym_percent = Entity.find_by code: 'lym_percent'
EntityUserRelation.find_or_create_by! user:, entity: lym_percent
Measurement.find_or_create_by! user:, entity: lym_percent, measured_at: DateTime.new(2023, 10, 3), value: 45.1, warning: :HIGH
Measurement.find_or_create_by! user:, entity: lym_percent, measured_at: DateTime.new(2022, 8, 24), value: 35.8

mon = Entity.find_by code: 'mon'
EntityUserRelation.find_or_create_by! user:, entity: mon
Measurement.find_or_create_by! user:, entity: mon, measured_at: DateTime.new(2023, 10, 3), value: 0.68
Measurement.find_or_create_by! user:, entity: mon, measured_at: DateTime.new(2022, 8, 24), value: 0.49

mon_percent = Entity.find_by code: 'mon_percent'
EntityUserRelation.find_or_create_by! user:, entity: mon_percent
Measurement.find_or_create_by! user:, entity: mon_percent, measured_at: DateTime.new(2023, 10, 3), value: 8.9
Measurement.find_or_create_by! user:, entity: mon_percent, measured_at: DateTime.new(2022, 8, 24), value: 7.7

eos = Entity.find_by code: 'eos'
EntityUserRelation.find_or_create_by! user:, entity: eos
Measurement.find_or_create_by! user:, entity: eos, measured_at: DateTime.new(2023, 10, 3), value: 0.72, warning: :HIGH
Measurement.find_or_create_by! user:, entity: eos, measured_at: DateTime.new(2022, 8, 24), value: 0.22

eos_percent = Entity.find_by code: 'eos_percent'
EntityUserRelation.find_or_create_by! user:, entity: eos_percent
Measurement.find_or_create_by! user:, entity: eos_percent, measured_at: DateTime.new(2023, 10, 3), value: 9.3, warning: :HIGH
Measurement.find_or_create_by! user:, entity: eos_percent, measured_at: DateTime.new(2022, 8, 24), value: 3.6

bas = Entity.find_by code: 'bas'
EntityUserRelation.find_or_create_by! user:, entity: bas
Measurement.find_or_create_by! user:, entity: bas, measured_at: DateTime.new(2023, 10, 3), value: 0.05
Measurement.find_or_create_by! user:, entity: bas, measured_at: DateTime.new(2022, 8, 24), value: 0.03

bas_percent = Entity.find_by code: 'bas_percent'
EntityUserRelation.find_or_create_by! user:, entity: bas_percent
Measurement.find_or_create_by! user:, entity: bas_percent, measured_at: DateTime.new(2023, 10, 3), value: 0.6
Measurement.find_or_create_by! user:, entity: bas_percent, measured_at: DateTime.new(2022, 8, 24), value: 0.5

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

cholesterol = Entity.find_by code: 'cholesterol'
EntityUserRelation.find_or_create_by! user:, entity: cholesterol
Measurement.find_or_create_by! user:, entity: cholesterol, measured_at: DateTime.new(2023, 10, 3), value: 3.56

alkaline_phosphatase = Entity.find_by code: 'alkaline_phosphatase'
EntityUserRelation.find_or_create_by! user:, entity: alkaline_phosphatase
Measurement.find_or_create_by! user:, entity: alkaline_phosphatase, measured_at: DateTime.new(2023, 10, 3), value: 355

kalium = Entity.find_by code: 'kalium'
EntityUserRelation.find_or_create_by! user:, entity: kalium
Measurement.find_or_create_by! user:, entity: kalium, measured_at: DateTime.new(2023, 10, 3), value: 4.7

natrium = Entity.find_by code: 'natrium'
EntityUserRelation.find_or_create_by! user:, entity: natrium
Measurement.find_or_create_by! user:, entity: natrium, measured_at: DateTime.new(2023, 10, 3), value: 138

chlorine = Entity.find_by code: 'chlorine'
EntityUserRelation.find_or_create_by! user:, entity: chlorine
Measurement.find_or_create_by! user:, entity: chlorine, measured_at: DateTime.new(2023, 10, 3), value: 103

crp = Entity.find_by code: 'crp'
EntityUserRelation.find_or_create_by! user:, entity: crp
Measurement.find_or_create_by! user:, entity: crp, measured_at: DateTime.new(2023, 10, 3), value: 2.4

transferrin = Entity.find_by code: 'transferrin'
EntityUserRelation.find_or_create_by! user:, entity: transferrin
Measurement.find_or_create_by! user:, entity: transferrin, measured_at: DateTime.new(2023, 10, 3), value: 2.45

ferritin = Entity.find_by code: 'ferritin', gender: :male
EntityUserRelation.find_or_create_by! user:, entity: ferritin
Measurement.find_or_create_by! user:, entity: ferritin, measured_at: DateTime.new(2023, 10, 3), value: 44

b12 = Entity.find_by code: 'b12'
EntityUserRelation.find_or_create_by! user:, entity: b12
Measurement.find_or_create_by! user:, entity: b12, measured_at: DateTime.new(2023, 10, 3), value: 39
folic_acid = Entity.find_by code: 'folic_acid'
EntityUserRelation.find_or_create_by! user:, entity: folic_acid
Measurement.find_or_create_by! user:, entity: folic_acid, measured_at: DateTime.new(2023, 10, 3), value: 2.8
t3_total = Entity.find_by code: 't3_total'
EntityUserRelation.find_or_create_by! user:, entity: t3_total
Measurement.find_or_create_by! user:, entity: t3_total, measured_at: DateTime.new(2023, 10, 3), value: 2.26
t3_free = Entity.find_by code: 't3_free'
EntityUserRelation.find_or_create_by! user:, entity: t3_free
Measurement.find_or_create_by! user:, entity: t3_free, measured_at: DateTime.new(2023, 10, 3), value: 5.9
t4_total = Entity.find_by code: 't4_total'
EntityUserRelation.find_or_create_by! user:, entity: t4_total
Measurement.find_or_create_by! user:, entity: t4_total, measured_at: DateTime.new(2023, 10, 3), value: 121.45
t4_free = Entity.find_by code: 't4_free'
EntityUserRelation.find_or_create_by! user:, entity: t4_free
Measurement.find_or_create_by! user:, entity: t4_free, measured_at: DateTime.new(2023, 10, 3), value: 13.58
ttg = Entity.find_by code: 'ttg'
EntityUserRelation.find_or_create_by! user:, entity: ttg
Measurement.find_or_create_by! user:, entity: ttg, measured_at: DateTime.new(2023, 10, 3), value: 3.02
homocysteine = Entity.find_by code: 'homocysteine'
EntityUserRelation.find_or_create_by! user:, entity: homocysteine
Measurement.find_or_create_by! user:, entity: homocysteine, measured_at: DateTime.new(2023, 10, 3), value: 10.58
ecp = Entity.find_by code: 'ecp'
EntityUserRelation.find_or_create_by! user:, entity: ecp
Measurement.find_or_create_by! user:, entity: ecp, measured_at: DateTime.new(2023, 10, 3), value: 139

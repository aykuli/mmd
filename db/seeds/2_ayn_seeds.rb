# frozen_string_literal: true

# Proto Mother
user = User.find_or_initialize_by email: 'a@b.com'
user.password = 'KAK96vtWJ4i9u7E'
user.first_name = 'Ayn'
user.last_name = 'Sha'
user.birth_date = '1987-02-19'
user.admin = true
user.confirmed = true
user.save!
user.observers << user

# blood_group
mcv = Entity.find_by code: 'mcv'
EntityUserRelation.find_or_create_by! user:, entity: mcv
Measurement.find_or_create_by! user:, entity: mcv, measured_at: DateTime.new(2022, 8, 24), value: 76.8
Measurement.find_or_create_by! user:, entity: mcv, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 82.4
Measurement.find_or_create_by! user:, entity: mcv, measured_at: DateTime.new(2023, 3, 24), value: 84
Measurement.find_or_create_by! user:, entity: mcv, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 81.5
Measurement.find_or_create_by! user:, entity: mcv, measured_at: DateTime.new(2023, 8, 14, 12, 40), value: 86.3

mch = Entity.find_by code: 'mch'
EntityUserRelation.find_or_create_by! user:, entity: mch
Measurement.find_or_create_by! user:, entity: mch, measured_at: DateTime.new(2022, 8, 24), value: 23.5, warning: :LOW
Measurement.find_or_create_by! user:, entity: mch, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 27.9
Measurement.find_or_create_by! user:, entity: mch, measured_at: DateTime.new(2023, 3, 24), value: 29
Measurement.find_or_create_by! user:, entity: mch, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 26, warning: :LOW
Measurement.find_or_create_by! user:, entity: mch, measured_at: DateTime.new(2023, 8, 14, 12, 40), value: 28

mchc = Entity.find_by code: 'mchc'
EntityUserRelation.find_or_create_by! user:, entity: mchc
Measurement.find_or_create_by! user:, entity: mchc, measured_at: DateTime.new(2022, 8, 24), value: 306
Measurement.find_or_create_by! user:, entity: mchc, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 338
Measurement.find_or_create_by! user:, entity: mchc, measured_at: DateTime.new(2023, 3, 24), value: 345
Measurement.find_or_create_by! user:, entity: mchc, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 320
Measurement.find_or_create_by! user:, entity: mchc, measured_at: DateTime.new(2023, 8, 14, 12, 40), value: 325

mpv = Entity.find_by code: 'mpv'
EntityUserRelation.find_or_create_by! user:, entity: mpv
Measurement.find_or_create_by! user:, entity: mpv, measured_at: DateTime.new(2022, 8, 24), value: 9.2

hct = Entity.find_by code: 'hct'
EntityUserRelation.find_or_create_by! user:, entity: hct
Measurement.find_or_create_by! user:, entity: hct, measured_at: DateTime.new(2022, 8, 24), value: 37.7
Measurement.find_or_create_by! user:, entity: hct, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 35.2
Measurement.find_or_create_by! user:, entity: hct, measured_at: DateTime.new(2023, 3, 24, 12, 40), value: 33.3
Measurement.find_or_create_by! user:, entity: hct, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 36.6
Measurement.find_or_create_by! user:, entity: hct, measured_at: DateTime.new(2023, 8, 14, 12, 40), value: 41.2

female_hemoglobin = Entity.find_by code: 'hemoglobin', gender: :female
EntityUserRelation.find_or_create_by! user:, entity: female_hemoglobin
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2017, 4, 21), value: 73, warning: :LOW
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2019, 1, 25), value: 105, warning: :LOW
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2020, 5, 19), value: 78, warning: :LOW
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2022, 8, 24, 12, 40), value: 116, warning: :LOW
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2022, 9, 25, 12, 40), value: 123
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 119, warning: :LOW
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2023, 3, 24), value: 115, warning: :LOW
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 117, warning: :LOW
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2023, 8, 14, 12, 40), value: 134

lym = Entity.find_by code: 'lym'
EntityUserRelation.find_or_create_by! user:, entity: lym
Measurement.find_or_create_by! user:, entity: lym, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 1.86
Measurement.find_or_create_by! user:, entity: lym, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 2.21

lym_percent = Entity.find_by code: 'lym_percent'
EntityUserRelation.find_or_create_by! user:, entity: lym_percent
Measurement.find_or_create_by! user:, entity: lym_percent, measured_at: DateTime.new(2023, 3, 24), value: 36

rdw_cv = Entity.find_by code: 'rdw_cv'
EntityUserRelation.find_or_create_by! user:, entity: rdw_cv
Measurement.find_or_create_by! user:, entity: rdw_cv, measured_at: DateTime.new(2022, 8, 24), value: 18.5, warning: :HIGH
Measurement.find_or_create_by! user:, entity: rdw_cv, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 13.6
Measurement.find_or_create_by! user:, entity: rdw_cv, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 16.9, warning: :HIGH
Measurement.find_or_create_by! user:, entity: rdw_cv, measured_at: DateTime.new(2023, 8, 14, 12, 40), value: 14.9, warning: :HIGH

rdw_sd = Entity.find_by code: 'rdw_sd'
EntityUserRelation.find_or_create_by! user:, entity: rdw_sd
Measurement.find_or_create_by! user:, entity: rdw_sd, measured_at: DateTime.new(2022, 8, 24), value: 59.6, warning: :HIGH

pdw = Entity.find_by code: 'pdw'
EntityUserRelation.find_or_create_by! user:, entity: pdw
Measurement.find_or_create_by! user:, entity: pdw, measured_at: DateTime.new(2022, 8, 24), value: 15.3

pct = Entity.find_by code: 'pct'
EntityUserRelation.find_or_create_by! user:, entity: pct
Measurement.find_or_create_by! user:, entity: pct, measured_at: DateTime.new(2022, 8, 24), value: 0.238

plt = Entity.find_by code: 'plt'
EntityUserRelation.find_or_create_by! user:, entity: plt
Measurement.find_or_create_by! user:, entity: plt, measured_at: DateTime.new(2023, 8, 24), value: 259
Measurement.find_or_create_by! user:, entity: plt, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 224
Measurement.find_or_create_by! user:, entity: plt, measured_at: DateTime.new(2023, 3, 24), value: 260
Measurement.find_or_create_by! user:, entity: plt, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 285
Measurement.find_or_create_by! user:, entity: plt, measured_at: DateTime.new(2023, 8, 14, 12, 40), value: 238

mon = Entity.find_by code: 'mon'
EntityUserRelation.find_or_create_by! user:, entity: mon
Measurement.find_or_create_by! user:, entity: mon, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 0.56
Measurement.find_or_create_by! user:, entity: mon, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 0.5

mon_percent = Entity.find_by code: 'mon_percent'
EntityUserRelation.find_or_create_by! user:, entity: mon_percent
Measurement.find_or_create_by! user:, entity: mon_percent, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 10.4
Measurement.find_or_create_by! user:, entity: mon, measured_at: DateTime.new(2023, 3, 24), value: 9
Measurement.find_or_create_by! user:, entity: mon_percent, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 9

bas = Entity.find_by code: 'bas'
EntityUserRelation.find_or_create_by! user:, entity: bas
Measurement.find_or_create_by! user:, entity: bas, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 0.04
Measurement.find_or_create_by! user:, entity: bas, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 0.03

bas_percent = Entity.find_by code: 'bas_percent'
EntityUserRelation.find_or_create_by! user:, entity: bas_percent
Measurement.find_or_create_by! user:, entity: bas_percent, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 0.8
Measurement.find_or_create_by! user:, entity: bas_percent, measured_at: DateTime.new(2023, 3, 24), value: 1
Measurement.find_or_create_by! user:, entity: bas_percent, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 0.5

eos = Entity.find_by code: 'eos'
EntityUserRelation.find_or_create_by! user:, entity: eos
Measurement.find_or_create_by! user:, entity: eos, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 0.19
Measurement.find_or_create_by! user:, entity: eos, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 0.17

eos_percent = Entity.find_by code: 'eos_percent'
EntityUserRelation.find_or_create_by! user:, entity: eos_percent
Measurement.find_or_create_by! user:, entity: eos_percent, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 3
Measurement.find_or_create_by! user:, entity: eos_percent, measured_at: DateTime.new(2023, 3, 24), value: 3
Measurement.find_or_create_by! user:, entity: eos_percent, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 3.6

rbc = Entity.find_by code: 'rbc'
EntityUserRelation.find_or_create_by! user:, entity: rbc
Measurement.find_or_create_by! user:, entity: rbc, measured_at: DateTime.new(2017, 4, 21), value: 3.52
Measurement.find_or_create_by! user:, entity: rbc, measured_at: DateTime.new(2019, 1, 25), value: 3.77
Measurement.find_or_create_by! user:, entity: rbc, measured_at: DateTime.new(2020, 5, 19), value: 4.45
Measurement.find_or_create_by! user:, entity: rbc, measured_at: DateTime.new(2022, 8, 24), value: 4.91
Measurement.find_or_create_by! user:, entity: rbc, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 4.27
Measurement.find_or_create_by! user:, entity: rbc, measured_at: DateTime.new(2023, 3, 24), value: 3.96
Measurement.find_or_create_by! user:, entity: rbc, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 4.49
Measurement.find_or_create_by! user:, entity: rbc, measured_at: DateTime.new(2023, 8, 14, 12, 40), value: 4.77

uric_acid = Entity.find_by code: 'uric_acid'
EntityUserRelation.find_or_create_by! user:, entity: uric_acid
Measurement.find_or_create_by! user:, entity: uric_acid, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 191

urea = Entity.find_by code: 'urea'
EntityUserRelation.find_or_create_by! user:, entity: urea
Measurement.find_or_create_by! user:, entity: urea, measured_at: DateTime.new(2022, 3, 24), value: 3.7

alb = Entity.find_by code: 'alb'
EntityUserRelation.find_or_create_by! user:, entity: alb
Measurement.find_or_create_by! user:, entity: alb, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 42

aly = Entity.find_by code: 'aly'
EntityUserRelation.find_or_create_by! user:, entity: aly
Measurement.find_or_create_by! user:, entity: aly, measured_at: DateTime.new(2022, 8, 24), value: 0.01

aly_percent = Entity.find_by code: 'aly_percent'
EntityUserRelation.find_or_create_by! user:, entity: aly_percent
Measurement.find_or_create_by! user:, entity: aly_percent, measured_at: DateTime.new(2022, 8, 24), value: 0.2

lic = Entity.find_by code: 'lic'
EntityUserRelation.find_or_create_by! user:, entity: lic
Measurement.find_or_create_by! user:, entity: lic, measured_at: DateTime.new(2022, 8, 24), value: 0.05

lic_percent = Entity.find_by code: 'lic_percent'
EntityUserRelation.find_or_create_by! user:, entity: lic_percent
Measurement.find_or_create_by! user:, entity: lic_percent, measured_at: DateTime.new(2022, 8, 24), value: 0.8

neu = Entity.find_by code: 'neu'
EntityUserRelation.find_or_create_by! user:, entity: neu
Measurement.find_or_create_by! user:, entity: neu, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 2.67
Measurement.find_or_create_by! user:, entity: neu, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 2.61

neu_percent = Entity.find_by code: 'neu_percent'
EntityUserRelation.find_or_create_by! user:, entity: neu_percent
Measurement.find_or_create_by! user:, entity: neu_percent, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 50.2
Measurement.find_or_create_by! user:, entity: neu_percent, measured_at: DateTime.new(2023, 3, 24), value: 49
Measurement.find_or_create_by! user:, entity: neu_percent, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 47.4, warning: :LOW

neu_rod_shaped_percent = Entity.find_by code: 'neu_rod_shaped_percent'
EntityUserRelation.find_or_create_by! user:, entity: neu_rod_shaped_percent
Measurement.find_or_create_by! user:, entity: neu_rod_shaped_percent, measured_at: DateTime.new(2023, 3, 24), value: 2

wbc = Entity.find_by code: 'wbc'
EntityUserRelation.find_or_create_by! user:, entity: wbc
Measurement.find_or_create_by! user:, entity: wbc, measured_at: DateTime.new(2017, 4, 21), value: 9.9, warning: :HIGH
Measurement.find_or_create_by! user:, entity: wbc, measured_at: DateTime.new(2019, 1, 25), value: 7
Measurement.find_or_create_by! user:, entity: wbc, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 5.31
Measurement.find_or_create_by! user:, entity: wbc, measured_at: DateTime.new(2023, 3, 24), value: 4.62
Measurement.find_or_create_by! user:, entity: wbc, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 5.51
Measurement.find_or_create_by! user:, entity: wbc, measured_at: DateTime.new(2023, 8, 14, 12, 40), value: 7.5

soe = Entity.find_by code: 'soe'
EntityUserRelation.find_or_create_by! user:, entity: soe
Measurement.find_or_create_by! user:, entity: soe, measured_at: DateTime.new(2017, 4, 21), value: 50
Measurement.find_or_create_by! user:, entity: soe, measured_at: DateTime.new(2019, 1, 25), value: 35
Measurement.find_or_create_by! user:, entity: soe, measured_at: DateTime.new(2022, 8, 24), value: 5
Measurement.find_or_create_by! user:, entity: soe, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 13
Measurement.find_or_create_by! user:, entity: soe, measured_at: DateTime.new(2023, 3, 24), value: 10
Measurement.find_or_create_by! user:, entity: soe, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 10

glucose = Entity.find_by code: 'glucose'
EntityUserRelation.find_or_create_by! user:, entity: glucose
Measurement.find_or_create_by! user:, entity: glucose, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 4.6
Measurement.find_or_create_by! user:, entity: glucose, measured_at: DateTime.new(2023, 3, 24), value: 4.38

# general_biochemistry
total_protein = Entity.find_by code: 'total_protein'
EntityUserRelation.find_or_create_by! user:, entity: total_protein
Measurement.find_or_create_by! user:, entity: total_protein, measured_at: DateTime.new(2022, 7, 25), value: 66
Measurement.find_or_create_by! user:, entity: total_protein, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 67
Measurement.find_or_create_by! user:, entity: total_protein, measured_at: DateTime.new(2023, 3, 24), value: 72
Measurement.find_or_create_by! user:, entity: total_protein, measured_at: DateTime.new(2023, 6, 5, 12, 40), value: 68

transferrin = Entity.find_by code: 'transferrin'
EntityUserRelation.find_or_create_by! user:, entity: transferrin
Measurement.find_or_create_by! user:, entity: transferrin, measured_at: DateTime.new(2022, 6, 9), value: 3.53

serum_iron_binding_capacity = Entity.find_by code: 'serum_iron_binding_capacity'
EntityUserRelation.find_or_create_by! user:, entity: serum_iron_binding_capacity
Measurement.find_or_create_by! user:, entity: serum_iron_binding_capacity, measured_at: DateTime.new(2022, 6, 9), value: 30.6, warning: :LOW

unsaturated_iron_binding_capacity = Entity.find_by code: 'unsaturated_iron_binding_capacity'
EntityUserRelation.find_or_create_by! user:, entity: unsaturated_iron_binding_capacity
Measurement.find_or_create_by! user:, entity: unsaturated_iron_binding_capacity, measured_at: DateTime.new(2022, 6, 9), value: 20.4

hba1c = Entity.find_by code: 'hba1c'
EntityUserRelation.find_or_create_by! user:, entity: hba1c
Measurement.find_or_create_by! user:, entity: hba1c, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 5.2

homocysteine = Entity.find_by code: 'homocysteine'
EntityUserRelation.find_or_create_by! user:, entity: homocysteine
Measurement.find_or_create_by! user:, entity: homocysteine, measured_at: DateTime.new(2022, 7, 25), value: 10.2
Measurement.find_or_create_by! user:, entity: homocysteine, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 3.76
Measurement.find_or_create_by! user:, entity: homocysteine, measured_at: DateTime.new(2023, 8, 14, 12, 40), value: 6.5

bilirubin_total = Entity.find_by code: 'bilirubin_total'
EntityUserRelation.find_or_create_by! user:, entity: bilirubin_total
Measurement.find_or_create_by! user:, entity: bilirubin_total, measured_at: DateTime.new(2023, 3, 24), value: 8.3

bilirubin_direct = Entity.find_by code: 'bilirubin_direct'
EntityUserRelation.find_or_create_by! user:, entity: bilirubin_direct
Measurement.find_or_create_by! user:, entity: bilirubin_direct, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 3.4
Measurement.find_or_create_by! user:, entity: bilirubin_direct, measured_at: DateTime.new(2023, 3, 24), value: 3.1

bilirubin_indirect = Entity.find_by code: 'bilirubin_indirect'
EntityUserRelation.find_or_create_by! user:, entity: bilirubin_indirect
Measurement.find_or_create_by! user:, entity: bilirubin_indirect, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 5.6
Measurement.find_or_create_by! user:, entity: bilirubin_indirect, measured_at: DateTime.new(2023, 3, 24), value: 5.2

creatinine = Entity.find_by code: 'creatinine'
EntityUserRelation.find_or_create_by! user:, entity: creatinine
Measurement.find_or_create_by! user:, entity: creatinine, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 55
Measurement.find_or_create_by! user:, entity: creatinine, measured_at: DateTime.new(2023, 3, 24), value: 54

triglycerides = Entity.find_by code: 'triglycerides'
EntityUserRelation.find_or_create_by! user:, entity: triglycerides
Measurement.find_or_create_by! user:, entity: triglycerides, measured_at: DateTime.new(2023, 3, 7, 12, 40), value: 0.71

# specific_protein
female_ferritin = Entity.find_by code: 'ferritin', gender: :female
EntityUserRelation.find_or_create_by! user:, entity: female_ferritin
Measurement.find_or_create_by! user:, entity: female_ferritin, measured_at: DateTime.new(2022, 6, 9), value: 11.55
Measurement.find_or_create_by! user:, entity: female_ferritin, measured_at: DateTime.new(2022, 9, 27), value: 15.65
Measurement.find_or_create_by! user:, entity: female_ferritin, measured_at: DateTime.new(2023, 1, 16), value: 10.28
Measurement.find_or_create_by! user:, entity: female_ferritin, measured_at: DateTime.new(2023, 6, 22), value: 11.55
Measurement.find_or_create_by! user:, entity: female_ferritin, measured_at: DateTime.new(2023, 9, 19), value: 15.65
Measurement.find_or_create_by! user:, entity: female_ferritin, measured_at: DateTime.new(2023, 8, 14), value: 126

ecp = Entity.find_by code: 'ecp'
EntityUserRelation.find_or_create_by! user:, entity: ecp
Measurement.find_or_create_by! user:, entity: ecp, measured_at: DateTime.new(2023, 3, 7), value: 37.7
Measurement.find_or_create_by! user:, entity: ecp, measured_at: DateTime.new(2023, 6, 5), value: 41.1

crp = Entity.find_by code: 'crp'
EntityUserRelation.find_or_create_by! user:, entity: crp
Measurement.find_or_create_by! user:, entity: crp, measured_at: DateTime.new(2023, 3, 7), value: 0.3

# vitamins
kalium = Entity.find_by code: 'kalium'
EntityUserRelation.find_or_create_by! user:, entity: kalium
Measurement.find_or_create_by! user:, entity: kalium, measured_at: DateTime.new(2022, 6, 22), value: 3.8
Measurement.find_or_create_by! user:, entity: kalium, measured_at: DateTime.new(2023, 1, 16), value: 3.4

natrium = Entity.find_by code: 'natrium'
EntityUserRelation.find_or_create_by! user:, entity: natrium
Measurement.find_or_create_by! user:, entity: natrium, measured_at: DateTime.new(2023, 1, 16), value: 134, warning: :LOW
Measurement.find_or_create_by! user:, entity: natrium, measured_at: DateTime.new(2023, 1, 24), value: 137
Measurement.find_or_create_by! user:, entity: natrium, measured_at: DateTime.new(2023, 4, 7), value: 137

chlorine = Entity.find_by code: 'chlorine'
EntityUserRelation.find_or_create_by! user:, entity: chlorine
Measurement.find_or_create_by! user:, entity: chlorine, measured_at: DateTime.new(2023, 1, 24), value: 103
Measurement.find_or_create_by! user:, entity: chlorine, measured_at: DateTime.new(2023, 4, 7), value: 106

b12 = Entity.find_by code: 'b12'
EntityUserRelation.find_or_create_by! user:, entity: b12
Measurement.find_or_create_by! user:, entity: b12, measured_at: DateTime.new(2023, 3, 7), value: 37.9
Measurement.find_or_create_by! user:, entity: b12, measured_at: DateTime.new(2023, 8, 14), value: 60.9
Measurement.find_or_create_by! user:, entity: b12, measured_at: DateTime.new(2023, 11, 11), value: 49.1

folic_acid = Entity.find_by code: 'folic_acid'
EntityUserRelation.find_or_create_by! user:, entity: folic_acid
Measurement.find_or_create_by! user:, entity: folic_acid, measured_at: DateTime.new(2023, 3, 7), value: 11.3

# thyroid_function
ttg = Entity.find_by code: 'ttg'
EntityUserRelation.find_or_create_by! user:, entity: ttg
Measurement.find_or_create_by! user:, entity: ttg, measured_at: DateTime.new(2022, 9, 19), value: 1.79
Measurement.find_or_create_by! user:, entity: ttg, measured_at: DateTime.new(2023, 3, 7), value: 2.66
Measurement.find_or_create_by! user:, entity: ttg, measured_at: DateTime.new(2023, 8, 14), value: 5.31

at_tpo = Entity.find_by code: 'at_tpo'
EntityUserRelation.find_or_create_by! user:, entity: at_tpo
Measurement.find_or_create_by! user:, entity: at_tpo, measured_at: DateTime.new(2023, 3, 7), value: 3

t4_free = Entity.find_by code: 't4_free'
EntityUserRelation.find_or_create_by! user:, entity: t4_free
Measurement.find_or_create_by! user:, entity: t4_free, measured_at: DateTime.new(2022, 9, 19), value: 14.43
Measurement.find_or_create_by! user:, entity: t4_free, measured_at: DateTime.new(2023, 3, 7), value: 11.15
Measurement.find_or_create_by! user:, entity: t4_free, measured_at: DateTime.new(2023, 8, 14), value: 11.53

t3_total = Entity.find_by code: 't3_total'
EntityUserRelation.find_or_create_by! user:, entity: t3_total
Measurement.find_or_create_by! user:, entity: t3_total, measured_at: DateTime.new(2022, 9, 19), value: 1.26

t3_free = Entity.find_by code: 't3_free'
EntityUserRelation.find_or_create_by! user:, entity: t3_free
Measurement.find_or_create_by! user:, entity: t3_free, measured_at: DateTime.new(2022, 9, 19), value: 4.86
Measurement.find_or_create_by! user:, entity: t3_free, measured_at: DateTime.new(2023, 8, 14), value: 4.4

# enzymes
sgpt = Entity.find_by code: 'sgpt'
EntityUserRelation.find_or_create_by! user:, entity: sgpt
Measurement.find_or_create_by! user:, entity: sgpt, measured_at: DateTime.new(2023, 3, 7), value: 19
Measurement.find_or_create_by! user:, entity: sgpt, measured_at: DateTime.new(2023, 3, 24), value: 20

sgot = Entity.find_by code: 'sgot'
EntityUserRelation.find_or_create_by! user:, entity: sgot
Measurement.find_or_create_by! user:, entity: sgot, measured_at: DateTime.new(2023, 3, 7), value: 22
Measurement.find_or_create_by! user:, entity: sgot, measured_at: DateTime.new(2023, 3, 24), value: 24

# lipid_panel
cholesterol = Entity.find_by code: 'cholesterol'
EntityUserRelation.find_or_create_by! user:, entity: cholesterol
Measurement.find_or_create_by! user:, entity: cholesterol, measured_at: DateTime.new(2023, 3, 7), value: 6.13, warning: :HIGH
Measurement.find_or_create_by! user:, entity: cholesterol, measured_at: DateTime.new(2023, 8, 14), value: 5.74, warning: :HIGH

ldl_cholesterol = Entity.find_by code: 'ldl_cholesterol'
EntityUserRelation.find_or_create_by! user:, entity: ldl_cholesterol
Measurement.find_or_create_by! user:, entity: ldl_cholesterol, measured_at: DateTime.new(2023, 3, 7), value: 3.54, warning: :HIGH

hdl_cholesterol = Entity.find_by code: 'hdl_cholesterol'
EntityUserRelation.find_or_create_by! user:, entity: hdl_cholesterol
Measurement.find_or_create_by! user:, entity: hdl_cholesterol, measured_at: DateTime.new(2023, 3, 7), value: 2.26

alkaline_phosphatase = Entity.find_by code: 'alkaline_phosphatase'
EntityUserRelation.find_or_create_by! user:, entity: alkaline_phosphatase
Measurement.find_or_create_by! user:, entity: alkaline_phosphatase, measured_at: DateTime.new(2023, 3, 7), value: 49

# hormones
prolactin = Entity.find_by code: 'prolactin'
EntityUserRelation.find_or_create_by! user:, entity: prolactin
Measurement.find_or_create_by! user:, entity: prolactin, measured_at: DateTime.new(2023, 11, 11), value: 401, warning: :HIGH

dheas = Entity.find_by code: 'dheas'
EntityUserRelation.find_or_create_by! user:, entity: dheas
Measurement.find_or_create_by! user:, entity: dheas, measured_at: DateTime.new(2023, 11, 11), value: 2.1

# metal
magnesium = Entity.find_by code: 'magnesium'
EntityUserRelation.find_or_create_by! user:, entity: magnesium
Measurement.find_or_create_by! user:, entity: magnesium, measured_at: DateTime.new(2023, 3, 7), value: 0.79
Measurement.find_or_create_by! user:, entity: magnesium, measured_at: DateTime.new(2023, 11, 11), value: 0.78

ferrum = Entity.find_by code: 'ferrum'
EntityUserRelation.find_or_create_by! user:, entity: ferrum
Measurement.find_or_create_by! user:, entity: ferrum, measured_at: DateTime.new(2022, 6, 9), value: 6.5

prothrombin_time = Entity.find_by code: 'prothrombin_time'
EntityUserRelation.find_or_create_by! user:, entity: prothrombin_time
Measurement.find_or_create_by! user:, entity: prothrombin_time, measured_at: DateTime.new(2023, 3, 24), value: 11
prothrombin = Entity.find_by code: 'prothrombin'
EntityUserRelation.find_or_create_by! user:, entity: prothrombin
Measurement.find_or_create_by! user:, entity: prothrombin, measured_at: DateTime.new(2023, 3, 24), value: 100
inr = Entity.find_by code: 'inr'
EntityUserRelation.find_or_create_by! user:, entity: inr
Measurement.find_or_create_by! user:, entity: inr, measured_at: DateTime.new(2023, 3, 24), value: 0.99
aptt = Entity.find_by code: 'aptt'
EntityUserRelation.find_or_create_by! user:, entity: aptt
Measurement.find_or_create_by! user:, entity: aptt, measured_at: DateTime.new(2023, 3, 24), value: 28.5
fibrinogen = Entity.find_by code: 'fibrinogen'
EntityUserRelation.find_or_create_by! user:, entity: fibrinogen
Measurement.find_or_create_by! user:, entity: fibrinogen, measured_at: DateTime.new(2023, 3, 24), value: 2.4
clotting_time = Entity.find_by code: 'clotting_time'
EntityUserRelation.find_or_create_by! user:, entity: clotting_time
Measurement.find_or_create_by! user:, entity: clotting_time, measured_at: DateTime.new(2023, 3, 24), value: 210
bleeding_time = Entity.find_by code: 'bleeding_time'
EntityUserRelation.find_or_create_by! user:, entity: bleeding_time
Measurement.find_or_create_by! user:, entity: bleeding_time, measured_at: DateTime.new(2023, 3, 24), value: 90

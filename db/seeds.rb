user = User.create! email: 'a@b.com', password: 'password', first_name: 'Aaaa', last_name: 'Bbbbb'
child = User.create! email: 'ab@b.com', password: 'password', first_name: 'Child_of_Aaaa', last_name: 'Child_of_Bbbbb', parent_id: user.id

female_hemoglobin = Entity.find_or_create_by! code: 'hemoglobin', title: "Гемоглобин", min: 120, max: 140
male_hemoglobin = Entity.find_or_create_by! code: 'hemoglobin', title: "Гемоглобин", min: 135, max: 160, gender: :male

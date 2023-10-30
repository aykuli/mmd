user = User.create! email: 'a@b.com', password: 'password', first_name: 'Aaaa', last_name: 'Bbbbb'
child = User.create! email: 'ab@b.com', password: 'password', first_name: 'Child_of_Aaaa', last_name: 'Child_of_Bbbbb', parent_id: user.id

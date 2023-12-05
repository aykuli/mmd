# frozen_string_literal: true

EntityGroup.find_or_create_by! code: 'blood',                 title: 'Клинический анализ крови',  precedence: 0
EntityGroup.find_or_create_by! code: 'general_biochemistry',  title: 'Общая биохимия',            precedence: 1
EntityGroup.find_or_create_by! code: 'specific_protein',      title: 'Специфические белки',       precedence: 3
EntityGroup.find_or_create_by! code: 'lipid_panel',           title: 'Липидный спектр',           precedence: 4
EntityGroup.find_or_create_by! code: 'thyroid_function',      title: 'Функция щитовидной железы', precedence: 5
EntityGroup.find_or_create_by! code: 'enzymes',               title: 'Ферменты',                  precedence: 6
EntityGroup.find_or_create_by! code: 'inorganic_substances',  title: 'Неорганические вещества',   precedence: 7
EntityGroup.find_or_create_by! code: 'vitamins',              title: 'Витамины',                  precedence: 8
EntityGroup.find_or_create_by! code: 'hormones',              title: 'Гормоны',                   precedence: 9
EntityGroup.find_or_create_by! code: 'metal', title: 'Металлы', precedence: 10

# frozen_string_literal: true

EntityGroup.find_or_create_by! code: 'blood', title: 'Клинический анализ крови'
EntityGroup.find_or_create_by! code: 'specific_protein', title: 'Специфические белки'
EntityGroup.find_or_create_by! code: 'enzymes', title: 'Ферменты'
EntityGroup.find_or_create_by! code: 'general_biochemistry', title: 'Общая биохимия'
EntityGroup.find_or_create_by! code: 'lipid_panel', title: 'Липидный спектр'

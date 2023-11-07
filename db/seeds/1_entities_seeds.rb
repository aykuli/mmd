# frozen_string_literal: true

blood_group = EntityGroup.find_by code: 'blood'
Entity.find_or_create_by! code: 'hemoglobin', title: 'Гемоглобин', group_id: blood_group.id,
                          min: 120, max: 140, unit: ' г/л', gender: :female,
                          description: 'Белок, содержащийся в эритроцитах и отвечающий за перенос молекул кислорода к клеткам организма.'
Entity.find_or_create_by! code: 'hemoglobin', title: 'Гемоглобин', group_id: blood_group.id,
                          min: 135, max: 160, unit: ' г/л', gender: :male,
                          description: 'Белок, содержащийся в эритроцитах и отвечающий за перенос молекул кислорода к клеткам организма.'

Entity.find_or_create_by! code: 'wbc', title: 'Лейкоциты', alias: 'WBC', group_id: blood_group.id,
                          min: 4, max: 9, unit: '*10^9 шт/л',
                          description: 'Белые или бесцветные клетки крови различных размеров. Основная функция лейкоцитов — противодействовать инфекциям, вирусам, бактериям и т.д. Лейкоциты делятся на 5 типов: нейтрофилы, лимфоциты, моноциты, эозинофилы и базофилы.'
Entity.find_or_create_by! code: 'neu', title: 'Нейрофилы', alias: 'Neu', group_id: blood_group.id,
                          min: 2, max: 7, unit: '*10^9 шт/л',
                          description: 'Hейтрофилы генерируются в костном мозге. Срок их службы в крови длится несколько часов. Нейтрофилы уничтожают микробы (фагоцитоз).'
Entity.find_or_create_by! code: 'neu_percent', title: 'Нейрофилы %', alias: 'Neu%', group_id: blood_group.id,
                          min: 50, max: 70, unit: ' %',
                          description: 'Hейтрофилы генерируются в костном мозге. Срок их службы в крови длится несколько часов. Нейтрофилы уничтожают микробы (фагоцитоз).'
Entity.find_or_create_by! code: 'lym', title: 'Лимфоциты', alias: 'Lym', group_id: blood_group.id,
                          min: 0.8, max: 4, unit: '*10^9 шт/л',
                          description: 'Лимфоциты - это основные клетки иммунной системы человека. Лимфоциты — один из видов белых кровяных клеток, который производится в лимфатической системе и костном мозге. По своим функциям лимфоциты делятся на В — лимфоциты, вырабатывающие антитела, Т-лимфоциты, которые борются с инфекциями и NK лимфоциты, контролирующие качество клеток организма.'
Entity.find_or_create_by! code: 'lym_percent', title: 'Лимфоциты %', alias: 'Lym%', group_id: blood_group.id,
                          min: 0.8, max: 4, unit: ' %',
                          description: 'Лимфоциты - это основные клетки иммунной системы человека. Лимфоциты — один из видов белых кровяных клеток, который производится в лимфатической системе и костном мозге. По своим функциям лимфоциты делятся на В — лимфоциты, вырабатывающие антитела, Т-лимфоциты, которые борются с инфекциями и NK лимфоциты, контролирующие качество клеток организма.'
Entity.find_or_create_by! code: 'mon', title: 'Моноциты', alias: 'Mon', group_id: blood_group.id,
                          min: 0.12, max: 1.2, unit: '*10^9 шт/л',
                          description: 'Моноциты - это один из видов фагоцитов, самый крупный вид лейкоцитов. Моноциты образуются в костном мозге. Эти клетки участвуют в регулировании и дифференцировании кроветворения, затем уходят в ткани организма и там превращаются в макрофаги. Моноциты имеют большое значение, так как отвечают за начальную активацию всей иммунной системы человека.'
Entity.find_or_create_by! code: 'mon_percent', title: 'Моноциты %', alias: 'Mon%', group_id: blood_group.id,
                          min: 3, max: 12, unit: ' %',
                          description: 'Моноциты - это один из видов фагоцитов, самый крупный вид лейкоцитов. Моноциты образуются в костном мозге. Эти клетки участвуют в регулировании и дифференцировании кроветворения, затем уходят в ткани организма и там превращаются в макрофаги. Моноциты имеют большое значение, так как отвечают за начальную активацию всей иммунной системы человека.'
Entity.find_or_create_by! code: 'eos', title: 'Эозинофилы', alias: 'Eos', group_id: blood_group.id,
                          min: 0.02, max: 0.5, unit: '*10^9 шт/л',
                          description: 'Эозинофилы - это белые клетки крови, характеризуются специфическим оранжевым цветом. Они принимают участие в иммунной системе. Повышаются при инфекциях паразитами. Существует тенденция к появлению при аллергии и астме.'
Entity.find_or_create_by! code: 'eos_percent', title: 'Эозинофилы %', alias: 'Eos%', group_id: blood_group.id,
                          min: 0.5, max: 5, unit: ' %',
                          description: 'Эозинофилы - это белые клетки крови, характеризуются специфическим оранжевым цветом. Они принимают участие в иммунной системе. Повышаются при инфекциях паразитами. Существует тенденция к появлению при аллергии и астме.'
Entity.find_or_create_by! code: 'bas', title: 'Базофилы', alias: 'Bas', group_id: blood_group.id,
                          min: 0, max: 0.1, unit: '*10^9 шт/л',
                          description: 'Базофилы - это одна из крупных форм лейкоцитов в крови, относящихся к иммунной системе. Основная функция — расширение кровеносных сосудов во время инфекции.'
Entity.find_or_create_by! code: 'bas_percent', title: 'Базофилы %', alias: 'Bas%', group_id: blood_group.id,
                          min: 0, max: 1, unit: ' %',
                          description: 'Базофилы - это одна из крупных форм лейкоцитов в крови, относящихся к иммунной системе. Основная функция — расширение кровеносных сосудов во время инфекции.'
Entity.find_or_create_by! code: 'bas', title: 'Базофилы', alias: 'Bas', group_id: blood_group.id,
                          min: 0, max: 0.1, unit: '*10^9 шт/л',
                          description: 'Базофилы - это одна из крупных форм лейкоцитов в крови, относящихся к иммунной системе. Основная функция — расширение кровеносных сосудов во время инфекции.'
Entity.find_or_create_by! code: 'bas_percent', title: 'Базофилы %', alias: 'Bas%', group_id: blood_group.id,
                          min: 0, max: 1, unit: ' %',
                          description: 'Базофилы - это одна из крупных форм лейкоцитов в крови, относящихся к иммунной системе. Основная функция — расширение кровеносных сосудов во время инфекции.'
Entity.find_or_create_by! code: 'aly', title: 'Атипичные лимфоциты', alias: 'ALY', group_id: blood_group.id,
                          min: 0, max: 0.2, unit: '*10^9 шт/л',
                          description: 'Атипичные мононуклеары являются бласттрансформированными лимфоцитами, появляющимися в крови при напряжении клеточного иммунитета. В норме их количество не превышает 6% от общего числа лейкоцитов.'
Entity.find_or_create_by! code: 'aly_percent', title: 'Атипичные лимфоциты %', alias: 'ALY%', group_id: blood_group.id,
                          min: 0, max: 2, unit: ' %',
                          description: 'Атипичные мононуклеары являются бласттрансформированными лимфоцитами, появляющимися в крови при напряжении клеточного иммунитета. В норме их количество не превышает 6% от общего числа лейкоцитов.'
Entity.find_or_create_by! code: 'lic', title: 'Большие незрелые клетки', alias: 'LIC', group_id: blood_group.id,
                          min: 0, max: 0.2, unit: '*10^9 шт/л',
                          description: 'большие незрелые клетки'
Entity.find_or_create_by! code: 'lic_percent', title: 'Большие незрелые клетки %', alias: 'LIC%', group_id: blood_group.id,
                          min: 0, max: 2.5, unit: ' %',
                          description: 'большие незрелые клетки'
Entity.find_or_create_by! code: 'rbc', title: 'Эритроциты', alias: 'RBC', group_id: blood_group.id,
                          min: 3.5, max: 5.5, unit: '*10^12 шт/л',
                          description: 'Эритроциты - красные кровяные тельца, переносящие гемоглобин. Главная функция эритроцитов транспортировка кислорода из лёгких ко всем тканям и двуокись углерода — от тканей обратно в лёгкие. Мало эритроцитов — мало гемоглобина. Мало гемоглобина — мало эритроцитов. Они взаимосвязаны.'
Entity.find_or_create_by! code: 'hct', title: 'Гематокрит', alias: 'HCT', group_id: blood_group.id,
                          min: 37, max: 54, unit: ' %',
                          description: 'Гематокрит - показывает в процентах индекс объёма эритроцитов к объёму всего образца крови.'
Entity.find_or_create_by! code: 'hct', title: 'Гематокрит', alias: 'HCT', group_id: blood_group.id,
                          min: 37, max: 54, unit: ' %',
                          description: 'Гематокрит - показывает в процентах индекс объёма эритроцитов к объёму всего образца крови.'
Entity.find_or_create_by! code: 'mcv', title: 'Средний объём эритроцита', alias: 'MCV', group_id: blood_group.id,
                          min: 80, max: 100, unit: ' фл',
                          description: 'Индекс среднего объёма эритроцитов.'
Entity.find_or_create_by! code: 'mch', title: 'Средний объём гемоглобина', alias: 'MCH', group_id: blood_group.id,
                          min: 27, max: 34, unit: ' фл',
                          description: 'Среднее количество гемоглобина в отдельном эритроците: в красных кровяных тельцах.'
Entity.find_or_create_by! code: 'mchc', title: 'Средний объём гемоглобина', alias: 'MCHC', group_id: blood_group.id,
                          min: 320, max: 360, unit: ' г/л',
                          description: 'Средняя концентрация гемоглобина в эритроците.'
Entity.find_or_create_by! code: 'rdw_cv', title: 'Ширина распределения эритроцитов', alias: 'RDW-CV', group_id: blood_group.id,
                          min: 11, max: 16, unit: ' %',
                          description: 'Ширина распределения эритроцитов позволяет понять, сколько аномальных по размеру эритроцитов обнаружено в образце крови. Этот показатель важен для диагностики анемий и некоторых других болезней.'
Entity.find_or_create_by! code: 'rdw_sd', title: 'Ширина распределения эритроцитов', alias: 'RDW-SD', group_id: blood_group.id,
                          min: 35, max: 56, unit: ' фл',
                          description: 'Индекс RDW-SD определяет разницу между самым большим и самым маленьким эритроцитом в образце крови.'
Entity.find_or_create_by! code: 'rdw_sd', title: 'Ширина распределения эритроцитов', alias: 'RDW-SD', group_id: blood_group.id,
                          min: 35, max: 56, unit: ' фл',
                          description: 'Индекс RDW-SD определяет разницу между самым большим и самым маленьким эритроцитом в образце крови.'
Entity.find_or_create_by! code: 'plt', title: 'Тромбоциты', alias: 'PLT', group_id: blood_group.id,
                          min: 100, max: 300, unit: '*10^9 г/л',
                          description: 'Тромбоциты - это клетки, влияющие на процессы свёртывания крови. Тромбоциты отвечают за гемостаз, заживление ран и остановку кровотечения. Анализ тромбоцитов важен при болезнях костного мозга, в котором они образуются.'
Entity.find_or_create_by! code: 'mpv', title: 'Средний объём тромбоцитов', alias: 'MPV', group_id: blood_group.id,
                          min: 6.5, max: 12, unit: ' фл',
                          description: 'Индекс среднего объёма тромбоцитов.'
Entity.find_or_create_by! code: 'pdw', title: 'Ширина распределения эритроцитов', alias: 'PDW', group_id: blood_group.id,
                          min: 9, max: 17, unit: '',
                          description: 'Ширина распределения эритроцитов определяет, как эритроциты отличаются между собой по размерам. '
Entity.find_or_create_by! code: 'pct', title: 'Тромбокрит', alias: 'PCT', group_id: blood_group.id,
                          min: 0.108, max: 0.282, unit: ' %',
                          description: 'Тромбокрит - это показатель, характеризующий процент тромбоцитарной массы в объеме крови. Используется для оценки риска возникновения кровотечения и тромбозов.'
Entity.find_or_create_by! code: 'soe', title: 'СОЭ', group_id: blood_group.id,
                          min: 0.108, max: 0.282, unit: ' %',
                          description: 'Скорость оседания эритроцитов отражает соотношение фракций белков плазмы; изменение СОЭ может служить косвенным признаком текущего воспалительного или иного патологического процесса.'

general_biochemistry = EntityGroup.find_by code: 'general_biochemistry'
Entity.find_or_create_by! code: 'hba1c', title: 'Гликированный гемоглобин', alias: 'HbA1c', group_id: general_biochemistry.id,
                          min: 0, max: 6, unit: ' %',
                          description: 'Гликированный гемоглобин определяет среднюю концентрацию глюкозы в крови в ретроспективе за три месяца. Анализ используют для ранней диагностики сахарного диабета и предиабета, а также для контроля эффективности лечения этих заболеваний.'
Entity.find_or_create_by! code: 'total_protein', title: 'Общий белок', group_id: general_biochemistry.id,
                          min: 65, max: 85, unit: ' г/л',
                          description: ' Общий белок в крови – это суммарное количество всех белковых фракций в крови. Общий белок состоит из альбумина, фибриногена и четырех глобулиновых фракций (альфа1, альфа 2, бета и гамма глобулины).'

lipid_panel = EntityGroup.find_by code: 'lipid_panel'
Entity.find_or_create_by! code: 'cholesterin', title: 'Холестерин', group_id: lipid_panel.id,
                          min: 3.08, max: 5.23, unit: ' ммоль/л',
                          description: ' Общий белок в крови – это суммарное количество всех белковых фракций в крови. Общий белок состоит из альбумина, фибриногена и четырех глобулиновых фракций (альфа1, альфа 2, бета и гамма глобулины).'

specific_protein = EntityGroup.find_by code: 'specific_protein'
Entity.find_or_create_by! code: 'ferritin', title: 'Ферритин', group_id: specific_protein.id,
                          min: 10, max: 159, unit: ' мкг/л', gender: :female,
                          description: 'Ферритин показывает количество накопленного железа в вашем теле, что может дать вашему врачу общую картину уровня железа в вашем организме.'

Entity.find_or_create_by! code: 'ferritin', title: 'Ферритин', group_id: specific_protein.id,
                          min: 29, max: 397, unit: ' мкг/л', gender: :male,
                          description: 'Ферритин показывает количество накопленного железа в вашем теле, что может дать вашему врачу общую картину уровня железа в вашем организме.'

enzymes = EntityGroup.find_by code: 'enzymes'
Entity.find_or_create_by! code: 'sgpt', title: 'АлАТ', group_id: enzymes.id,
                          min: 7, max: 45, unit: ' МЕ/л',
                          description: 'Аланинаминотрансфераза - маркерные ферменты для печени.'
Entity.find_or_create_by! code: 'sgot', title: 'АcАТ', group_id: enzymes.id,
                          min: 8, max: 48, unit: ' МЕ/л',
                          description: 'Аспартатаминотрансфераза - маркерные ферменты для миокарда.'

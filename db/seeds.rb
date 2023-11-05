# frozen_string_literal: true

user = User.find_or_initialize_by email: 'a@b.com'
user.password= 'password'
user.first_name= 'Aaaa'
user.last_name= 'Bbbbb'
user.save!
# son = User.find_or_initalize_by first_name: 'Son', last_name: nil, parent_id: user.id, gender: :male

female_hemoglobin = Entity.find_or_create_by! code: 'hemoglobin', title: 'Гемоглобин',
                                              min: 120, max: 140, unit: ' г/л', gender: :female,
                                              description: 'Белок, содержащийся в эритроцитах и отвечающий за перенос молекул кислорода к клеткам организма.'
EntityUserRelation.find_or_create_by! user:, entity: female_hemoglobin
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2022, 8, 24, 12, 40), value: 116, warning: :LOW
Measurement.find_or_create_by! user:, entity: female_hemoglobin, measured_at: DateTime.new(2022, 9, 25, 12, 40), value: 123

Entity.find_or_create_by! code: 'hemoglobin', title: 'Гемоглобин',
                          min: 135, max: 160, unit: ' г/л', gender: :male,
                          description: 'Белок, содержащийся в эритроцитах и отвечающий за перенос молекул кислорода к клеткам организма.'

female_ferritin = Entity.find_or_create_by! code: 'ferritin', title: 'Ферритин',
                                            min: 10, max: 159, unit: ' мкг/л', gender: :female,
                                            description: 'Ферритин показывает количество накопленного железа в вашем теле, что может дать вашему врачу общую картину уровня железа в вашем организме.'
EntityUserRelation.find_or_create_by! user:, entity: female_ferritin
Measurement.find_or_create_by! user:, entity: female_ferritin, measured_at: DateTime.new(2022, 6, 22), value: 11.55
Measurement.find_or_create_by! user:, entity: female_ferritin, measured_at: DateTime.new(2022, 9, 19), value: 15.65

Entity.find_or_create_by! code: 'ferritin', title: 'Ферритин',
                          min: 29, max: 397, unit: ' мкг/л', gender: :male,
                          description: 'Ферритин показывает количество накопленного железа в вашем теле, что может дать вашему врачу общую картину уровня железа в вашем организме.'

Entity.find_or_create_by! code: 'wbc', title: 'Лейкоциты', alias: 'WBC',
                          min: 4, max: 9, unit: '*10^9 шт/л',
                          description: 'Белые или бесцветные клетки крови различных размеров. Основная функция лейкоцитов — противодействовать инфекциям, вирусам, бактериям и т.д. Лейкоциты делятся на 5 типов: нейтрофилы, лимфоциты, моноциты, эозинофилы и базофилы.'
Entity.find_or_create_by! code: 'neu', title: 'Нейрофилы', alias: 'Neu',
                          min: 2, max: 7, unit: '*10^9 шт/л',
                          description: 'Hейтрофилы генерируются в костном мозге. Срок их службы в крови длится несколько часов. Нейтрофилы уничтожают микробы (фагоцитоз).'
Entity.find_or_create_by! code: 'neu_percent', title: 'Нейрофилы %', alias: 'Neu%',
                          min: 50, max: 70, unit: ' %',
                          description: 'Hейтрофилы генерируются в костном мозге. Срок их службы в крови длится несколько часов. Нейтрофилы уничтожают микробы (фагоцитоз).'
Entity.find_or_create_by! code: 'lym', title: 'Лимфоциты', alias: 'Lym',
                          min: 0.8, max: 4, unit: '*10^9 шт/л',
                          description: 'Лимфоциты - это основные клетки иммунной системы человека. Лимфоциты — один из видов белых кровяных клеток, который производится в лимфатической системе и костном мозге. По своим функциям лимфоциты делятся на В — лимфоциты, вырабатывающие антитела, Т-лимфоциты, которые борются с инфекциями и NK лимфоциты, контролирующие качество клеток организма.'
Entity.find_or_create_by! code: 'lym_percent', title: 'Лимфоциты %', alias: 'Lym%',
                          min: 0.8, max: 4, unit: ' %',
                          description: 'Лимфоциты - это основные клетки иммунной системы человека. Лимфоциты — один из видов белых кровяных клеток, который производится в лимфатической системе и костном мозге. По своим функциям лимфоциты делятся на В — лимфоциты, вырабатывающие антитела, Т-лимфоциты, которые борются с инфекциями и NK лимфоциты, контролирующие качество клеток организма.'
Entity.find_or_create_by! code: 'mon', title: 'Моноциты', alias: 'Mon',
                          min: 0.12, max: 1.2, unit: '*10^9 шт/л',
                          description: 'Моноциты - это один из видов фагоцитов, самый крупный вид лейкоцитов. Моноциты образуются в костном мозге. Эти клетки участвуют в регулировании и дифференцировании кроветворения, затем уходят в ткани организма и там превращаются в макрофаги. Моноциты имеют большое значение, так как отвечают за начальную активацию всей иммунной системы человека.'
Entity.find_or_create_by! code: 'mon_percent', title: 'Моноциты %', alias: 'Mon%',
                          min: 3, max: 12, unit: ' %',
                          description: 'Моноциты - это один из видов фагоцитов, самый крупный вид лейкоцитов. Моноциты образуются в костном мозге. Эти клетки участвуют в регулировании и дифференцировании кроветворения, затем уходят в ткани организма и там превращаются в макрофаги. Моноциты имеют большое значение, так как отвечают за начальную активацию всей иммунной системы человека.'
Entity.find_or_create_by! code: 'eos', title: 'Эозинофилы', alias: 'Eos',
                          min: 0.02, max: 0.5, unit: '*10^9 шт/л',
                          description: 'Эозинофилы - это белые клетки крови, характеризуются специфическим оранжевым цветом. Они принимают участие в иммунной системе. Повышаются при инфекциях паразитами. Существует тенденция к появлению при аллергии и астме.'
Entity.find_or_create_by! code: 'eos_percent', title: 'Эозинофилы %', alias: 'Eos%',
                          min: 0.5, max: 5, unit: ' %',
                          description: 'Эозинофилы - это белые клетки крови, характеризуются специфическим оранжевым цветом. Они принимают участие в иммунной системе. Повышаются при инфекциях паразитами. Существует тенденция к появлению при аллергии и астме.'
Entity.find_or_create_by! code: 'bas', title: 'Базофилы', alias: 'Bas',
                          min: 0, max: 0.1, unit: '*10^9 шт/л',
                          description: 'Базофилы - это одна из крупных форм лейкоцитов в крови, относящихся к иммунной системе. Основная функция — расширение кровеносных сосудов во время инфекции.'
Entity.find_or_create_by! code: 'bas_percent', title: 'Базофилы %', alias: 'Bas%',
                          min: 0, max: 1, unit: ' %',
                          description: 'Базофилы - это одна из крупных форм лейкоцитов в крови, относящихся к иммунной системе. Основная функция — расширение кровеносных сосудов во время инфекции.'
Entity.find_or_create_by! code: 'bas', title: 'Базофилы', alias: 'Bas',
                          min: 0, max: 0.1, unit: '*10^9 шт/л',
                          description: 'Базофилы - это одна из крупных форм лейкоцитов в крови, относящихся к иммунной системе. Основная функция — расширение кровеносных сосудов во время инфекции.'
Entity.find_or_create_by! code: 'bas_percent', title: 'Базофилы %', alias: 'Bas%',
                          min: 0, max: 1, unit: ' %',
                          description: 'Базофилы - это одна из крупных форм лейкоцитов в крови, относящихся к иммунной системе. Основная функция — расширение кровеносных сосудов во время инфекции.'
Entity.find_or_create_by! code: 'aly', title: 'Атипичные лимфоциты', alias: 'ALY',
                          min: 0, max: 0.2, unit: '*10^9 шт/л',
                          description: 'Атипичные мононуклеары являются бласттрансформированными лимфоцитами, появляющимися в крови при напряжении клеточного иммунитета. В норме их количество не превышает 6% от общего числа лейкоцитов.'
Entity.find_or_create_by! code: 'aly_percent', title: 'Атипичные лимфоциты %', alias: 'ALY%',
                          min: 0, max: 2, unit: ' %',
                          description: 'Атипичные мононуклеары являются бласттрансформированными лимфоцитами, появляющимися в крови при напряжении клеточного иммунитета. В норме их количество не превышает 6% от общего числа лейкоцитов.'
Entity.find_or_create_by! code: 'lic', title: 'Большие незрелые клетки', alias: 'LIC',
                          min: 0, max: 0.2, unit: '*10^9 шт/л',
                          description: 'большие незрелые клетки'
Entity.find_or_create_by! code: 'lic_percent', title: 'Большие незрелые клетки %', alias: 'LIC%',
                          min: 0, max: 2.5, unit: ' %',
                          description: 'большие незрелые клетки'
Entity.find_or_create_by! code: 'rbc', title: 'Эритроциты', alias: 'RBC',
                          min: 3.5, max: 5.5, unit: '*10^12 шт/л',
                          description: 'Эритроциты - красные кровяные тельца, переносящие гемоглобин. Главная функция эритроцитов транспортировка кислорода из лёгких ко всем тканям и двуокись углерода — от тканей обратно в лёгкие. Мало эритроцитов — мало гемоглобина. Мало гемоглобина — мало эритроцитов. Они взаимосвязаны.'
Entity.find_or_create_by! code: 'hct', title: 'Гематокрит', alias: 'HCT',
                          min: 37, max: 54, unit: ' %',
                          description: 'Гематокрит - показывает в процентах индекс объёма эритроцитов к объёму всего образца крови.'
Entity.find_or_create_by! code: 'hct', title: 'Гематокрит', alias: 'HCT',
                          min: 37, max: 54, unit: ' %',
                          description: 'Гематокрит - показывает в процентах индекс объёма эритроцитов к объёму всего образца крови.'
Entity.find_or_create_by! code: 'mcv', title: 'Средний объём эритроцита', alias: 'MCV',
                          min: 80, max: 100, unit: ' фл',
                          description: 'Индекс среднего объёма эритроцитов.'
Entity.find_or_create_by! code: 'mch', title: 'Средний объём гемоглобина', alias: 'MCH',
                          min: 27, max: 34, unit: ' фл',
                          description: 'Среднее количество гемоглобина в отдельном эритроците: в красных кровяных тельцах.'
Entity.find_or_create_by! code: 'mchc', title: 'Средний объём гемоглобина', alias: 'MCHC',
                          min: 320, max: 360, unit: ' г/л',
                          description: 'Средняя концентрация гемоглобина в эритроците.'
Entity.find_or_create_by! code: 'rdw_cv', title: 'Ширина распределения эритроцитов', alias: 'RDW-CV',
                          min: 11, max: 16, unit: ' %',
                          description: 'Ширина распределения эритроцитов позволяет понять, сколько аномальных по размеру эритроцитов обнаружено в образце крови. Этот показатель важен для диагностики анемий и некоторых других болезней.'
Entity.find_or_create_by! code: 'rdw_sd', title: 'Ширина распределения эритроцитов', alias: 'RDW-SD',
                          min: 35, max: 56, unit: ' фл',
                          description: 'Индекс RDW-SD определяет разницу между самым большим и самым маленьким эритроцитом в образце крови.'
Entity.find_or_create_by! code: 'rdw_sd', title: 'Ширина распределения эритроцитов', alias: 'RDW-SD',
                          min: 35, max: 56, unit: ' фл',
                          description: 'Индекс RDW-SD определяет разницу между самым большим и самым маленьким эритроцитом в образце крови.'
Entity.find_or_create_by! code: 'plt', title: 'Тромбоциты', alias: 'PLT',
                          min: 100, max: 300, unit: '*10^9 г/л',
                          description: 'Тромбоциты - это клетки, влияющие на процессы свёртывания крови. Тромбоциты отвечают за гемостаз, заживление ран и остановку кровотечения. Анализ тромбоцитов важен при болезнях костного мозга, в котором они образуются.'
Entity.find_or_create_by! code: 'mpv', title: 'Средний объём тромбоцитов', alias: 'MPV',
                          min: 6.5, max: 12, unit: ' фл',
                          description: 'Индекс среднего объёма тромбоцитов.'
Entity.find_or_create_by! code: 'pdw', title: 'Ширина распределения эритроцитов', alias: 'PDW',
                          min: 9, max: 17, unit: '',
                          description: 'Ширина распределения эритроцитов определяет, как эритроциты отличаются между собой по размерам. '
Entity.find_or_create_by! code: 'pct', title: 'Тромбокрит', alias: 'PCT',
                          min: 0.108, max: 0.282, unit: ' %',
                          description: 'Тромбокрит - это показатель, характеризующий процент тромбоцитарной массы в объеме крови. Используется для оценки риска возникновения кровотечения и тромбозов.'
Entity.find_or_create_by! code: 'soe', title: 'СОЭ',
                          min: 0.108, max: 0.282, unit: ' %',
                          description: 'Скорость оседания эритроцитов отражает соотношение фракций белков плазмы; изменение СОЭ может служить косвенным признаком текущего воспалительного или иного патологического процесса.'

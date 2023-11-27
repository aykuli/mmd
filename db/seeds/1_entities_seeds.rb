# frozen_string_literal: true

blood_group = EntityGroup.find_by code: 'blood'
Entity.find_or_create_by! code: 'hemoglobin', title: 'Гемоглобин', group_id: blood_group.id,
                          min: 120, max: 140, unit: 'г/л', gender: :female, precedence: 1,
                          description: 'Белок, содержащийся в эритроцитах и отвечающий за перенос молекул кислорода к клеткам организма.'
Entity.find_or_create_by! code: 'hemoglobin', title: 'Гемоглобин', group_id: blood_group.id,
                          min: 135, max: 160, unit: 'г/л', gender: :male,
                          description: 'Белок, содержащийся в эритроцитах и отвечающий за перенос молекул кислорода к клеткам организма.'

Entity.find_or_create_by! code: 'wbc', title: 'Лейкоциты', alias: 'WBC', group_id: blood_group.id,
                          min: 4, max: 9, unit: 'млн/мл',
                          description: 'Белые или бесцветные клетки крови различных размеров. Основная функция лейкоцитов — противодействовать инфекциям, вирусам, бактериям и т.д. Лейкоциты делятся на 5 типов: нейтрофилы, лимфоциты, моноциты, эозинофилы и базофилы.'
Entity.find_or_create_by! code: 'neu', title: 'Hейтрофилы', alias: 'Neu', group_id: blood_group.id,
                          min: 2, max: 7, unit: 'тыс/мкл',
                          description: 'Hейтрофилы генерируются в костном мозге. Срок их службы в крови длится несколько часов. Нейтрофилы уничтожают микробы (фагоцитоз).'
Entity.find_or_create_by! code: 'neu_percent', title: 'Hейтрофилы %', alias: 'Neu%', group_id: blood_group.id,
                          min: 40, max: 78, unit: '%',
                          description: 'Hейтрофилы генерируются в костном мозге. Срок их службы в крови длится несколько часов. Нейтрофилы уничтожают микробы (фагоцитоз).'
Entity.find_or_create_by! code: 'lym', title: 'Лимфоциты', alias: 'Lym', group_id: blood_group.id,
                          min: 0.8, max: 4, unit: 'млнт/мл',
                          description: 'Лимфоциты - это основные клетки иммунной системы человека. Лимфоциты — один из видов белых кровяных клеток, который производится в лимфатической системе и костном мозге. По своим функциям лимфоциты делятся на В — лимфоциты, вырабатывающие антитела, Т-лимфоциты, которые борются с инфекциями и NK лимфоциты, контролирующие качество клеток организма.'
Entity.find_or_create_by! code: 'lym_percent', title: 'Лимфоциты %', alias: 'Lym%', group_id: blood_group.id,
                          min: 0.8, max: 4, unit: '%',
                          description: 'Лимфоциты - это основные клетки иммунной системы человека. Лимфоциты — один из видов белых кровяных клеток, который производится в лимфатической системе и костном мозге. По своим функциям лимфоциты делятся на В — лимфоциты, вырабатывающие антитела, Т-лимфоциты, которые борются с инфекциями и NK лимфоциты, контролирующие качество клеток организма.'
Entity.find_or_create_by! code: 'mon', title: 'Моноциты', alias: 'Mon', group_id: blood_group.id,
                          min: 0.12, max: 1.2, unit: 'тыс/мкл',
                          description: 'Моноциты - это один из видов фагоцитов, самый крупный вид лейкоцитов. Моноциты образуются в костном мозге. Эти клетки участвуют в регулировании и дифференцировании кроветворения, затем уходят в ткани организма и там превращаются в макрофаги. Моноциты имеют большое значение, так как отвечают за начальную активацию всей иммунной системы человека.'
Entity.find_or_create_by! code: 'mon_percent', title: 'Моноциты %', alias: 'Mon%', group_id: blood_group.id,
                          min: 3, max: 11, unit: '%',
                          description: 'Моноциты - это один из видов фагоцитов, самый крупный вид лейкоцитов. Моноциты образуются в костном мозге. Эти клетки участвуют в регулировании и дифференцировании кроветворения, затем уходят в ткани организма и там превращаются в макрофаги. Моноциты имеют большое значение, так как отвечают за начальную активацию всей иммунной системы человека.'
Entity.find_or_create_by! code: 'eos', title: 'Эозинофилы', alias: 'Eos', group_id: blood_group.id,
                          min: 0.02, max: 0.5, unit: 'тыс/мкл',
                          description: 'Эозинофилы - это белые клетки крови, характеризуются специфическим оранжевым цветом. Они принимают участие в иммунной системе. Повышаются при инфекциях паразитами. Существует тенденция к появлению при аллергии и астме.'
Entity.find_or_create_by! code: 'eos_percent', title: 'Эозинофилы %', alias: 'Eos%', group_id: blood_group.id,
                          min: 0.5, max: 5, unit: '%',
                          description: 'Эозинофилы - это белые клетки крови, характеризуются специфическим оранжевым цветом. Они принимают участие в иммунной системе. Повышаются при инфекциях паразитами. Существует тенденция к появлению при аллергии и астме.'
Entity.find_or_create_by! code: 'bas_percent', title: 'Базофилы %', alias: 'Bas%', group_id: blood_group.id,
                          min: 0, max: 1, unit: '%',
                          description: 'Базофилы - это одна из крупных форм лейкоцитов в крови, относящихся к иммунной системе. Основная функция — расширение кровеносных сосудов во время инфекции.'
Entity.find_or_create_by! code: 'bas', title: 'Базофилы', alias: 'Bas', group_id: blood_group.id,
                          min: 0, max: 0.1, unit: 'тыс/мкл',
                          description: 'Базофилы - это одна из крупных форм лейкоцитов в крови, относящихся к иммунной системе. Основная функция — расширение кровеносных сосудов во время инфекции.'
Entity.find_or_create_by! code: 'bas_percent', title: 'Базофилы %', alias: 'Bas%', group_id: blood_group.id,
                          min: 0, max: 1, unit: '%',
                          description: 'Базофилы - это одна из крупных форм лейкоцитов в крови, относящихся к иммунной системе. Основная функция — расширение кровеносных сосудов во время инфекции.'
Entity.find_or_create_by! code: 'aly', title: 'Атипичные лимфоциты', alias: 'ALY', group_id: blood_group.id,
                          min: 0, max: 0.2, unit: 'млн/мл',
                          description: 'Атипичные мононуклеары являются бласттрансформированными лимфоцитами, появляющимися в крови при напряжении клеточного иммунитета. В норме их количество не превышает 6% от общего числа лейкоцитов.'
Entity.find_or_create_by! code: 'aly_percent', title: 'Атипичные лимфоциты %', alias: 'ALY%', group_id: blood_group.id,
                          min: 0, max: 2, unit: '%',
                          description: 'Атипичные мононуклеары являются бласттрансформированными лимфоцитами, появляющимися в крови при напряжении клеточного иммунитета. В норме их количество не превышает 6% от общего числа лейкоцитов.'
Entity.find_or_create_by! code: 'lic', title: 'Большие незрелые клетки', alias: 'LIC', group_id: blood_group.id,
                          min: 0, max: 0.2, unit: 'млн/мл',
                          description: 'большие незрелые клетки'
Entity.find_or_create_by! code: 'lic_percent', title: 'Большие незрелые клетки %', alias: 'LIC%', group_id: blood_group.id,
                          min: 0, max: 2.5, unit: '%',
                          description: 'большие незрелые клетки'
Entity.find_or_create_by! code: 'rbc', title: 'Эритроциты', alias: 'RBC', group_id: blood_group.id,
                          min: 3.5, max: 5.5, unit: 'млн/мкл',
                          description: 'Эритроциты - красные кровяные тельца, переносящие гемоглобин. Главная функция эритроцитов транспортировка кислорода из лёгких ко всем тканям и двуокись углерода — от тканей обратно в лёгкие. Мало эритроцитов — мало гемоглобина. Мало гемоглобина — мало эритроцитов. Они взаимосвязаны.'
Entity.find_or_create_by! code: 'hct', title: 'Гематокрит', alias: 'HCT', group_id: blood_group.id,
                          min: 37, max: 54, unit: '%',
                          description: 'Гематокрит - показывает в процентах индекс объёма эритроцитов к объёму всего образца крови.'
Entity.find_or_create_by! code: 'mcv', title: 'Средний объём эритроцита', alias: 'MCV', group_id: blood_group.id,
                          min: 80, max: 100, unit: 'фл',
                          description: 'Индекс среднего объёма эритроцитов.'
Entity.find_or_create_by! code: 'mch', title: 'Средний объём гемоглобина в эритроците', alias: 'MCH', group_id: blood_group.id,
                          min: 27, max: 34, unit: 'фл',
                          description: 'Среднее количество гемоглобина в отдельном эритроците: в красных кровяных тельцах.'
Entity.find_or_create_by! code: 'mchc', title: 'Средний объём гемоглобина', alias: 'MCHC', group_id: blood_group.id,
                          min: 320, max: 360, unit: 'г/л',
                          description: 'Средняя концентрация гемоглобина'
Entity.find_or_create_by! code: 'rdw_cv', title: 'Ширина распределения эритроцитов', alias: 'RDW-CV', group_id: blood_group.id,
                          min: 11, max: 16, unit: '%',
                          description: 'Ширина распределения эритроцитов позволяет понять, сколько аномальных по размеру эритроцитов обнаружено в образце крови. Этот показатель важен для диагностики анемий и некоторых других болезней.'
Entity.find_or_create_by! code: 'rdw_sd', title: 'Ширина распределения эритроцитов', alias: 'RDW-SD', group_id: blood_group.id,
                          min: 35, max: 56, unit: 'фл',
                          description: 'Индекс RDW-SD определяет разницу между самым большим и самым маленьким эритроцитом в образце крови.'
Entity.find_or_create_by! code: 'plt', title: 'Тромбоциты', alias: 'PLT', group_id: blood_group.id,
                          min: 100, max: 300, unit: 'тыс/мкл',
                          description: 'Тромбоциты - это клетки, влияющие на процессы свёртывания крови. Тромбоциты отвечают за гемостаз, заживление ран и остановку кровотечения. Анализ тромбоцитов важен при болезнях костного мозга, в котором они образуются.'
Entity.find_or_create_by! code: 'mpv', title: 'Средний объём тромбоцитов', alias: 'MPV', group_id: blood_group.id,
                          min: 6.5, max: 12, unit: 'фл',
                          description: 'Индекс среднего объёма тромбоцитов.'
Entity.find_or_create_by! code: 'pdw', title: 'Ширина распределения эритроцитов', alias: 'PDW', group_id: blood_group.id,
                          min: 9, max: 17, unit: '',
                          description: 'Ширина распределения эритроцитов определяет, как эритроциты отличаются между собой по размерам. '
Entity.find_or_create_by! code: 'pct', title: 'Тромбокрит', alias: 'PCT', group_id: blood_group.id,
                          min: 0.108, max: 0.282, unit: '%',
                          description: 'Тромбокрит - это показатель, характеризующий процент тромбоцитарной массы в объеме крови. Используется для оценки риска возникновения кровотечения и тромбозов.'
Entity.find_or_create_by! code: 'soe', title: 'СОЭ', group_id: blood_group.id,
                          min: 0, max: 20, unit: 'мм/ч',
                          description: 'Скорость оседания эритроцитов отражает соотношение фракций белков плазмы; изменение СОЭ может служить косвенным признаком текущего воспалительного или иного патологического процесса.'
Entity.find_or_create_by! code: 'uric_acid', title: 'Мочевая кислота', group_id: blood_group.id,
                          min: 150, max: 350, unit: 'мкмоль/л',
                          description: 'Мочевая кислота – это продукт катаболизма пуриновых оснований, входящих в состав ДНК и РНК всех клеток организма. Пурины появляются в основном после естественной гибели клеток, а меньшая их часть поступает с пищей (с печенью, красным мясом, бобовыми, рыбой) и жидкостями (с пивом, вином). Мочевая кислота транспортируется кровью от печени (там с ней взаимодействует фермент ксантиноксидаза) до почек, где около 70  % ее фильтруется и выделяется с мочой, оставшаяся часть попадает в желудочно-кишечный тракт и удаляется со стулом. Если мочевой кислоты производится слишком много или недостаточно выделяется с мочой, она накапливается в организме, что проявляется ее высокой концентрацией в крови (гиперурикемией). Постоянно повышенный уровень мочевой кислоты может быть причиной подагры – воспаления суставов, при котором кристаллы мочевой кислоты откладываются в суставной (синовиальной) жидкости. Кроме того, отложение уратов и формирование камней в мочевыделительной системе – тоже следствие высокого уровня мочевой кислоты в крови. Повышение уровня мочевой кислоты бывает вызвано возросшей гибелью клеток (из-за противоопухолевой терапии) или реже врождённой склонностью к повышенному производству мочевой кислоты. К недостаточному выведению мочевой кислоты обычно приводит снижение функции почек при их поражении. Во многих случаях точная причина избыточного накопления мочевой кислоты остается неизвестной. Ускоренные процессы гибели клеток, а также снижение скорости выделения мочевой кислоты почками вызывает гиперурикемию – повышение концентрации мочевой кислоты в крови. В результате она откладывается в суставах и мягких тканях, воспаление переходит на внутрисуставные кристаллы уратов. К тому же образуются камни в мочевыделительной системе.'
Entity.find_or_create_by! code: 'urea', title: 'Мочевина', group_id: blood_group.id,
                          min: 2.1, max: 7.1, unit: 'мкмоль/л',
                          description: 'Мочевина – один из основных метаболитов крови, организм никак ее не использует, а только избавляется от нее. Так как этот процесс выделения непрерывный, определенное количество мочевины в норме всегда находится в крови. Уровень мочевины следует трактовать неотрывно от показателей креатинина. Термин "уремия" применяется, когда уровень мочевины в крови поднимается выше 20 ммоль/л. Азотемия, показателем которой также служит повышение концентрации мочевины, чаще всего является следствием неадекватной экскреции из-за заболеваний почек. Уровень мочевины в крови снижается при многих заболеваниях печени. Это происходит из-за неспособности поврежденных клеток печени синтезировать мочевину, что, в свою очередь, ведет к повышению концентрации аммиака в крови и развитию печеночной энцефалопатии.'
Entity.find_or_create_by! code: 'alb', title: 'Альбумин', group_id: blood_group.id,
                          min: 35, max: 52, unit: 'г/л',
                          description: 'Альбумин (ALB) – белок плазмы крови, который выполняет большое количество важных функций. Он участвует в процессах метаболизма, переносит по организму ряд химических веществ и прочее. Определение уровня этого белка играет важную роль в оценке состояния печени. ALB составляет примерно 60% от общего количества белка.'
Entity.find_or_create_by! code: 'glucose', title: 'Глюкоза', group_id: blood_group.id,
                          min: 4.1, max: 6, unit: 'ммоль/л',
                          description: 'Уровень глюкозы определяют при подозрении на нарушение обмена углеводов. Самой частой причиной хронического повышения глюкозы в крови (гипергликемии) служит сахарный диабет. Глюкозу натощак важно проверять при диспансеризации здоровым людям, так как диабет может течь несколько лет бессимптомно и диагностируется уже на стадии осложнений.'


general_biochemistry = EntityGroup.find_by code: 'general_biochemistry'
Entity.find_or_create_by! code: 'hba1c', title: 'Гликированный гемоглобин', alias: 'HbA1c', group_id: general_biochemistry.id,
                          min: 0, max: 6, unit: '%',
                          description: 'Гликированный гемоглобин определяет среднюю концентрацию глюкозы в крови в ретроспективе за три месяца. Анализ используют для ранней диагностики сахарного диабета и предиабета, а также для контроля эффективности лечения этих заболеваний.'
Entity.find_or_create_by! code: 'total_protein', title: 'Общий белок', group_id: general_biochemistry.id,
                          min: 65, max: 85, unit: 'г/л',
                          description: 'Общий белок в крови – это суммарное количество всех белковых фракций в крови. Общий белок состоит из альбумина, фибриногена и четырех глобулиновых фракций (альфа1, альфа 2, бета и гамма глобулины).'
Entity.find_or_create_by! code: 'homocysteine', title: 'Гомоцистеин', group_id: general_biochemistry.id,
                          min: 4.71, max: 10.4, unit: 'мкмоль/л',
                          description: 'Гомоцистеин – серосодержащая аминокислота плазмы крови. При высоком уровне гомоцистеина возможна нехватка группы виаминов В, а также увеличивается риск сердечно-сосудистых заболеваний, инсульта, болезни Альцгеймера и остеопороза.'
Entity.find_or_create_by! code: 'bilirubin_total', title: 'Билирубин общий', group_id: blood_group.id,
                          min: 3.4, max: 20.5, unit: 'мкмоль/л',
                          description: 'Билирубин – оранжево-желтый пигмент, обнаруживаемый в желчи и придающий ей характерный цвет. В норме эритроциты циркулируют в крови около 120 дней, а затем разрушаются. Во время их разрушения содержащийся в них гемоглобин (красный пигмент, который переносит кислород от легких к тканям) превращается в непрямой (несвязанный, неконъюгированный) билирубин. Ежедневно в норме образуется около 250-350 мг билирубина, из которых 85  % получается из разрушенных эритроцитов, а остальное количество – из костного мозга и печени. Непрямой билирубин доставляется в печень, где к нему присоединяется сахаросодержащее вещество, что делает его растворимым в воде. Именно такой билирубин называется прямым (связанным, конъюгированным). Прямой билирубин из клеток печени перемещается в желчные протоки и с желчью переносится в кишечник. Под действием нормальной микрофлоры кишечника сахаросодержащее вещество отщепляется от билирубина, а он сам превращается в коричневый пигмент, придающий характерный цвет калу, который затем выводится из организма.В норме прямой билирубин почти не содержится в крови. Его концентрация увеличивается в случаях, когда печень способна метаболизировать билирубин, но не может его своевременно вывести. Чаще всего такое бывает из-за закупорки желчных протоков (тогда будет повышаться в основном только прямой билирубин), а также из-за повреждения структуры печени при гепатитах или циррозе (тогда будут повышаться и прямой, и непрямой билирубины).При препятствии оттоку желчи билирубин не попадает в кишечник и, соответственно, не превращается в коричневый пигмент, поэтому происходит осветление кала. Избыточные количества прямого билирубина, проникая в мочу, начинают придавать ей темный цвет.'
Entity.find_or_create_by! code: 'bilirubin_direct', title: 'Билирубин прямой', group_id: blood_group.id,
                          min: 0, max: 8.6, unit: 'мкмоль/л',
                          description: 'Билирубин – оранжево-желтый пигмент, обнаруживаемый в желчи и придающий ей характерный цвет. В норме эритроциты циркулируют в крови около 120 дней, а затем разрушаются. Во время их разрушения содержащийся в них гемоглобин (красный пигмент, который переносит кислород от легких к тканям) превращается в непрямой (несвязанный, неконъюгированный) билирубин. Ежедневно в норме образуется около 250-350 мг билирубина, из которых 85  % получается из разрушенных эритроцитов, а остальное количество – из костного мозга и печени. Непрямой билирубин доставляется в печень, где к нему присоединяется сахаросодержащее вещество, что делает его растворимым в воде. Именно такой билирубин называется прямым (связанным, конъюгированным). Прямой билирубин из клеток печени перемещается в желчные протоки и с желчью переносится в кишечник. Под действием нормальной микрофлоры кишечника сахаросодержащее вещество отщепляется от билирубина, а он сам превращается в коричневый пигмент, придающий характерный цвет калу, который затем выводится из организма.В норме прямой билирубин почти не содержится в крови. Его концентрация увеличивается в случаях, когда печень способна метаболизировать билирубин, но не может его своевременно вывести. Чаще всего такое бывает из-за закупорки желчных протоков (тогда будет повышаться в основном только прямой билирубин), а также из-за повреждения структуры печени при гепатитах или циррозе (тогда будут повышаться и прямой, и непрямой билирубины).При препятствии оттоку желчи билирубин не попадает в кишечник и, соответственно, не превращается в коричневый пигмент, поэтому происходит осветление кала. Избыточные количества прямого билирубина, проникая в мочу, начинают придавать ей темный цвет.'
Entity.find_or_create_by! code: 'bilirubin_indirect', title: 'Билирубин непрямой', group_id: blood_group.id,
                          min: 0, max: 19, unit: 'мкмоль/л',
                          description: 'Непрямой, или свободный билирубин – токсичный продукт распада эритроцитов. Обычно он поступает в печень, где соединяется с глюкуроновой кислотой и трансформируется в нетоксичный прямой билирубин, который затем выводится организмом. Непрямой билирубин нерастворим в воде, что затрудняет его прямое измерение лабораторными методами. В лаборатории его уровень вычисляют при помощи показателей общего и прямого билирубина, поэтому данный анализ является комплексным. Уровень билирубина повышается при повреждении печеночных клеток, усиленном распаде эритроцитов (гемолиз) либо нарушении обмена желчных пигментов, в том числе при наследственных заболеваниях, таких как синдром Жильбера. Если повышаются и прямой, и непрямой билирубин, то это говорит о вероятности повреждения печени или желчевыводящих путей, чаще всего вследствие гепатитов (вирусных, алкогольных и токсических), вирусных инфекций, онкологических заболеваний. У новорожденных непрямой билирубин растет при гемолитической болезни (конфликте по резус- фактору или группе крови матери и ребенка). Гемолитическая болезнь опасна в первую очередь токсичностью непрямого билирубина для мозга и нервной системы новорожденного.'
Entity.find_or_create_by! code: 'creatinine', title: 'Креатинин', group_id: blood_group.id,
                          min: 49, max: 90, unit: 'мкмоль/л',
                          description: 'Уровень креатинина в сыворотке/плазме крови используют в качестве маркера скорости клубочковой фильтрации (СКФ) в почках – в диагностике острых и хронических нарушений функции почек; для оценки функции почек при принятии решений о дозировке лекарственных препаратов, выводимых почками, или перед применением препаратов, которые могут оказать неблагоприятное воздействие на почки. Креатинин крови может слегка повышаться при диете, содержащей очень большое количества мяса, а также при использовании пищевых добавок, содержащих креатин. Повышение содержания креатинина в крови возможно в результате повреждения мышц.'
Entity.find_or_create_by! code: 'triglycerides', title: 'Триглицериды', group_id: blood_group.id,
                          min: 0, max: 1.69, unit: 'ммоль/л',
                          description: 'Триглицериды (ТГ) – источник получения энергии и основная форма ее сохранения в организме. Молекулы ТГ содержат трехатомный спирт глицерол и остатки жирных кислот. При необходимости получения энергии для различных процессов жизнедеятельности, утилизация ТГ дает вдвое больше калорий на 1 г массы, чем аминокислоты и углеводы. ТГ поступают в организм с пищей, а также синтезируются клетками кишечника, жировой ткани, печени. В крови они циркулируют не в свободном виде, а связаны с белками и переносятся в виде макромолекулярных комплексов, преимущественно в составе липопротеинов очень низкой плотности (ЛПОНП) и хиломикронов. Жировая ткань (особенно при избыточном поступлении калорий и снижении расхода энергии) депонирует ТГ. Нередко повышение уровня ТГ (хилез крови) является следствием особенностей диеты. Вторичная гипертриглицеридемия может наблюдаться при ожирении, злоупотреблении алкоголем, нарушении толерантности к глюкозе, сахарном диабете 2-го типа, хронической болезни почек, патологии печени и ряде других заболеваний и патологических состояний.'

lipid_panel = EntityGroup.find_by code: 'lipid_panel'
Entity.find_or_create_by! code: 'cholesterol', title: 'Холестерин', group_id: lipid_panel.id,
                          min: 3.08, max: 5.23, unit: 'ммоль/л',
                          description: 'Холестерол в организме вырабатывается преимущественно в печени или всасывается с пищей. Через кровоток он попадает в другие органы. Прибыв в «пункт назначения», холестерин выполняет различные важные задачи. Он встроен во внешнюю оболочку (мембрану) всех клеток организма. В результате он влияет на вязкость клеточной мембраны, которая защищает внутреннюю часть клеточной структуры от внешней среды.'
Entity.find_or_create_by! code: 'ldl_cholesterol', title: 'Холестерин-ЛПНП(по Фривальду)', group_id: lipid_panel.id,
                          min: 0, max: 2.99, unit: 'ммоль/л',
                          description: 'Липопротеины низкой плотности – основные переносчики холестерола (холестерина) в организме. Холестерол, входящий в их состав, считается "вредным", так как при его избытке повышается риск появления в артериях бляшек, которые могут приводить к их закупорке и вызывать инфаркт или инсульт.'
Entity.find_or_create_by! code: 'hdl_cholesterol', title: 'Холестерин-ЛПВП', group_id: lipid_panel.id,
                          min: 1.21, max: 1000, unit: 'ммоль/л',
                          description: 'Высокий уровень холестерина ЛПВП рассматривается как благоприятный антиатерогенный фактор, снижающий сердечно-сосудистый риск. Низкий уровень холестерина ЛПВП отражает риск преждевременного развития атеросклероза, высокий риск сердечно-сосудистых заболеваний и часто сочетается с гипертриглицеридемией при метаболическом синдроме, инсулинорезистентности и сахарном диабете 2-го типа.'
Entity.find_or_create_by! code: 'alkaline_phosphatase', title: 'Фосфтаза щелочная', group_id: lipid_panel.id,
                          min: 40, max: 150, unit: 'Ед/л',
                          description: 'Щелочная фосфатаза – группа ферментов, содержащихся практически во всех тканях организма, с преимущественной локализацией в печени, костях и плаценте. Фосфатазы в клетках участвуют в реакциях отщепления остатка фосфорной кислоты от ее органических соединений. Активность общей щелочной фосфатазы повышается при целом ряде заболеваний, сопровождающихся повреждением ткани печени, костей, почек и других органов.'


specific_protein = EntityGroup.find_by code: 'specific_protein'
Entity.find_or_create_by! code: 'ferritin', title: 'Ферритин', group_id: specific_protein.id,
                          min: 10, max: 159, unit: 'мкг/л', gender: :female, precedence: 1,
                          description: 'Ферритин показывает количество накопленного железа в вашем теле, что может дать вашему врачу общую картину уровня железа в вашем организме.'
Entity.find_or_create_by! code: 'ferritin', title: 'Ферритин', group_id: specific_protein.id,
                          min: 29, max: 397, unit: 'мкг/л', gender: :male,
                          description: 'Ферритин показывает количество накопленного железа в вашем теле, что может дать вашему врачу общую картину уровня железа в вашем организме.'
Entity.find_or_create_by! code: 'crp', title: 'С-реактивный белок', group_id: specific_protein.id,
                          min: 0, max: 5, unit: 'мг/л',
                          description: 'С-реактивный белок относится к белкам острой фазы, высокий уровень данного вещества в крови демонстрирует присутствие воспалительного процесса.'
Entity.find_or_create_by! code: 'transferrin', title: 'Трансферрин', group_id: specific_protein.id,
                          min: 1.81, max: 3.53, unit: 'г/л',
                          description: 'Трансферрин – главный белок-переносчик железа в плазме крови. Он образуется в печени из аминокислот, которые всасываются из пищи в процессе переваривания. Трансферрин связывается с железом, которое поступает с едой или при разрушении эритроцитов, и переносит его к органам и тканям (к печени, селезенке).'
Entity.find_or_create_by! code: 'ecp', title: 'Эозинофильный катионный белок', group_id: specific_protein.id,
                          min: 0, max: 24, unit: 'нг/л',
                          description: 'Эозинофильный катионный белок (ЕСР – eosinophil cationic protein) — один из основных белков, входящих в состав гранул эозинофилов. Активирует аллергическую реакцию. Участвует в развитии атопического дерматита, астмы, аллергического ринита, пищевой аллергии. Стимулирует иммунный ответ.'
Entity.find_or_create_by! code: 'serum_iron_binding_capacity', title: 'ОЖСС', alias: 'Железосвязывающая способность сыворотки', group_id: specific_protein.id,
                          min: 45.3, max: 76, unit: 'мкмоль/л',
                          description: 'Тест на ОЖСС обычно назначают вместе с определением количества железа в сыворотке, иногда с анализом на латентную железосвязывающую способность сыворотки и на трансферрин, чтобы определить количество железа в организме и его связь с белками крови. Эти исследования позволяют рассчитать процент насыщения трансферрина железом, то есть определить, сколько именно железа переносит кровь. Данный показатель наиболее точно характеризует обмен железа.'
Entity.find_or_create_by! code: 'unsaturated_iron_binding_capacity', title: 'ЛЖСС', alias: 'Латентная железосвязывающая способность сыворотки', group_id: specific_protein.id,
                          min: 20, max: 62, unit: 'мкмоль/л',
                          description: 'Обычно в организме содержится 4-5 г железа, около 3-4 мг (0,1  % от общего количества) циркулирует в крови "в связке" с трансферрином. Уровень трансферрина зависит от функционирования печени и от питания человека. В норме железом заполнена 1/3 связывающих центров трансферрина, остальные 2/3 остаются в резерве. Показатель латентной железосвязывающей способности сыворотки (ЛЖСС) отражает, сколько трансферрина "не заполнено" железом.'

enzymes = EntityGroup.find_by code: 'enzymes'
Entity.find_or_create_by! code: 'sgpt', title: 'АлАТ', group_id: enzymes.id,
                          min: 7, max: 45, unit: 'МЕ/л',
                          description: 'Аланинаминотрансфераза - маркерные ферменты для печени.'
Entity.find_or_create_by! code: 'sgot', title: 'АcАТ', group_id: enzymes.id,
                          min: 8, max: 31, unit: 'МЕ/л',
                          description: 'Аспартатаминотрансфераза - маркерные ферменты для миокарда.'

inorganic_substances = EntityGroup.find_by code: 'inorganic_substances'
Entity.find_or_create_by! code: 'kalium', title: 'Калий', group_id: inorganic_substances.id,
                          min: 3.4, max: 4.7, unit: 'ммоль/л',
                          description: 'Калий, натрий и хлор — это электролиты — вещества, которые поддерживают уровень воды и кислотно-щелочной баланс в организме. Анализ помогает выявить дисбаланс электролитов, который сопровождает многие острые и хронические заболевания.'
Entity.find_or_create_by! code: 'natrium', title: 'Натрий', group_id: inorganic_substances.id,
                          min: 138, max: 145, unit: 'ммоль/л',
                          description: 'Калий, натрий и хлор — это электролиты — вещества, которые поддерживают уровень воды и кислотно-щелочной баланс в организме. Анализ помогает выявить дисбаланс электролитов, который сопровождает многие острые и хронические заболевания.'
Entity.find_or_create_by! code: 'chlorine', title: 'Хлор', group_id: inorganic_substances.id,
                          min: 101, max: 110, unit: 'ммоль/л',
                          description: 'Калий, натрий и хлор — это электролиты — вещества, которые поддерживают уровень воды и кислотно-щелочной баланс в организме. Анализ помогает выявить дисбаланс электролитов, который сопровождает многие острые и хронические заболевания.'

vitamins = EntityGroup.find_by code: 'vitamins'
Entity.find_or_create_by! code: 'b12', title: 'Активный витамин В12', group_id: vitamins.id,
                          min: 25, max: 165, unit: 'пмоль/л',
                          description: 'Витамин B12 необходим для созревания эритроцитов — красных клеток крови. При его нехватке развивается анемия, страдают сердечно-сосудистая и нервная системы. '
Entity.find_or_create_by! code: 'folic_acid', title: 'Фолиевая кислота', group_id: vitamins.id,
                          min: 3.1, max: 20.5, unit: 'нг/мл',
                          description: 'Фолиевая кислота - водорастворимый витамин, необходимый для роста и развития кровеносной и иммунной систем.'

thyroid_function = EntityGroup.find_by code: 'thyroid_function'
Entity.find_or_create_by! code: 't3_total', title: 'Т3 общий', group_id: thyroid_function.id,
                          min: 1.5, max: 2.71, unit: 'нмоль/л',
                          description: 'Трийодтиронин (Т3) – один из двух главных гормонов щитовидной железы, основной функцией которого является регуляция энергетического (главным образом поглощения кислорода тканями) и пластического обмена в организме. Общий трийодтиронин – это сумма двух фракций: связанной и не связанной с белками плазмы крови.'
Entity.find_or_create_by! code: 't3_free', title: 'Т3 свободный', group_id: thyroid_function.id,
                          min: 4.4, max: 6.7, unit: 'пмоль/л',
                          description: 'Трийодтиронин свободный (Т3 св.) – это гормон, который вырабатывает щитовидная железа и который крайне важен для адекватного функционирования организма. Цифра три обозначает число содержания в его молекуле атомов йода. Основная функция Т3 свободного - стимуляция тканей к всасыванию кислорода и активизация метаболизма.'
Entity.find_or_create_by! code: 't4_total', title: 'Т4 общий', group_id: thyroid_function.id,
                          min: 64.5, max: 106.5, unit: 'нмоль/л',
                          description: 'Тироксин (Т4) – один из двух главных гормонов щитовидной железы, основной функцией которого является регуляция энергетического и пластического обмена в организме. Общий тироксин – это сумма двух фракций: связанной и не связанной с белками плазмы крови.'
Entity.find_or_create_by! code: 't4_free', title: 'Т4 свободный', group_id: thyroid_function.id,
                          min: 9.98, max: 14.29, unit: 'пмоль/л',
                          description: 'Свободный Т4 позволяет оценить функцию щитовидной железы вне зависимости от концентрации белков крови, которые его связывают. Анализ на Т4 обычно назначают в комплексе с анализом крови на ТТГ (тиреотропный гормон, вырабатываемый гипофизом), от которого зависит выработка тироксина.'
Entity.find_or_create_by! code: 'ttg', title: 'ТТГ', group_id: thyroid_function.id,
                          min: 0.7, max: 4.17, unit: 'мЕд/л',
                          description: 'Тиреотропный гормон (ТТГ)  –  основной регулятор функции щитовидной железы, синтезирующийся гипофизом  –  небольшой железой, которая расположена на нижней поверхности головного мозга. Основная его функция  –  поддерживать постоянную концентрацию гормонов щитовидной железы –  тиреоидных гормонов, которые регулируют процессы образования энергии в организме. Когда их содержание в крови понижается, гипоталамус высвобождает гормон, стимулирующий секрецию ТТГ гипофизом.'
Entity.find_or_create_by! code: 'at_tpo', title: 'АТ-ТПО', group_id: thyroid_function.id,
                          min: 0, max: 5.6, unit: 'МЕ/мл',
                          description: 'Антитела к тиреопероксидазе – специфические иммуноглобулины, направленные против фермента, содержащегося в клетках щитовидной железы и отвечающего за образование активной формы йода для синтеза тиреоидных гормонов. Они являются специфичным маркером аутоиммунных заболеваний щитовидной железы.'

hormones = EntityGroup.find_by code: 'hormones'
Entity.find_or_create_by! code: 'prolactin', title: 'Пролактин', group_id: hormones.id,
                          min: 109, max: 557, unit: 'мЕд/л',
                          description: 'Повышенный уровень пролактина может быть ассоциирован с наличием: Опухоли, продуцирующей пролактин (пролактиномы) или других опухолей гипофиза, Заболевания гипоталамуса, Нервной анорексии, Ряда заболеваний печени, почек, щитовидной железы.'
Entity.find_or_create_by! code: 'dheas', title: 'Дегидроэпиандростерон-сульфат', alias: 'ДЭА-SO4', group_id: hormones.id,
                          min: 2, max: 11.1, unit: 'мкмоль/л',
                          description: 'Повышенный уровень ДЭА-SO4  может свидетельствовать об опухоли коры надпочечников, раке либо гиперплазии надпочечников. Он не является диагностическим признаком какой-то определенной болезни, однако указывает на необходимость дальнейшего обследования для выявления причин гормонального дисбаланса. Низкий уровень ДЭА-SO4  бывает вызван дисфункцией надпочечников или гипопитуитаризмом, нарушениями, являющимися причиной понижения уровня питуитарных гормонов, которые, в свою очередь, регулируют производство и секрецию гормонов, производимых надпочечниками.'

metal= EntityGroup.find_by code: 'metal'
Entity.find_or_create_by! code: 'magnesium', title: 'Магний', group_id: metal.id,
                          min: 0.66, max: 1.07, unit: 'ммоль/л',
                          description: 'Снижение уровня магния обычно наблюдается при: Недоедании, в том числе у пожилых людей, У людей, злоупотребляющих диетами или больных алкоголизмом, При заболеваниях желудочно- кишечного тракта (болезнь Крона, мальабсорбция), При сахарном диабете, Гипопаратиреозе, Во втором и третьем триместре у беременных, Длительном применении мочегонных средств, При наличии сильных ожогов, при преэклампсии, в послеоперационном периоде, При наличии длительной диареи.'
Entity.find_or_create_by! code: 'copper', title: 'Медь', group_id: metal.id,
                          min: 0.66, max: 1.07, unit: 'ммоль/л',
                          description: 'Симптомы дефицита меди включают нейтропению, анемию (нечувствительную к препаратам железа), остеопороз, различные поражения костей и суставов, сниженную пигментацию кожи, неврологические симптомы и нарушения работы сердца. Дефицит всасывания меди может наблюдаться при диффузных заболеваниях тонкого кишечника и на фоне высокого содержания конкурирующих с медью ионов цинка и кадмия. Дефицит меди может наблюдаться у грудных детей (особенно недоношенных) на медьдефицитном молочном питании, у пациентов на длительном парентеральном питании с дефицитом микроэлементов, у пациентов, получающих препараты цинка типа пеницилламин.'
Entity.find_or_create_by! code: 'zinc', title: 'Цинк', group_id: metal.id,
                          min: 0.66, max: 1.07, unit: 'ммоль/л',
                          description: 'Цинк  – жизненно важный элемент, один из самых распространенных микроэлементов организма, количественно второй после железа. Он входит в состав более 300 металлоферментов, среди которых карбоангидраза, щелочная фосфатаза, РНК- и ДНК-полимеразы, тимидинкиназные карбоксипептидазы, алкогольдегидрогеназа. Ключевая роль цинка в синтезе белка и нуклеиновых кислот объясняет нарушения роста и заживления ран, наблюдаемые при дефиците этого элемента.'
Entity.find_or_create_by! code: 'ferrum', title: 'Железо в сыворотке', group_id: metal.id,
                          min: 6.6, max: 26, unit: 'ммоль/л',
                          description: 'При тяжелой железодефицитной анемии человек может жаловаться на одышку, боль в грудной клетке, сильные головные боли, слабость в ногах. У детей возможны трудности с обучением. Помимо основных, есть еще несколько признаков, характерных для дефицита железа: желание употреблять в пищу необычные продукты (мел, глину), жжение кончика языка, заеды (трещины в углах рта). Симптомы избытка железа: боль в суставах, слабость, усталость, боль в животе, снижение сексуального влечения, нарушения сердечного ритма.'

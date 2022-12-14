/*
    SQL Manager for PostgreSQL
    Запросы редактора SQL
 */

/*  Страница 1  */

INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (4, NULL, '1. Ишемическая болезнь сердца');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (5, NULL, '2. Артериальная гипертензия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (6, NULL, '3. Нарушения ритма сердца');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (7, NULL, '4. Кардиомиопатии');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (8, NULL, '5. Сердечная недостаточность');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (9, NULL, '6. Врожденные пороки сердца');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (10, NULL, '7. Приобретенные пороки сердца');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (11, NULL, '8. Болезни сосудов');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (12, NULL, '9. Другие болезни сердца');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (13, 4, '1.1. Ишемическая болезнь сердца');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (14, 4, '1.2. Перенесенный в прошлом инфаркт миокарда');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (15, 4, '1.3. Аневризма левого желудочка');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (16, 4, '1.4. Ишемическая кардиомиопатия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (17, 4, '1.5. Стенокардия напряжения ');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (18, 4, '1.6. Безболевая ишемия миокарда');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (19, 4, '1.7. Вазоспастическая стенокардия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (20, 4, '1.8. Нестабильная стенокардия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (21, 4, '1.9. Тромбированная аневризма левого желудочка');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (22, 4, '1.10. Острый коронарный синдром с подъемом ST');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (23, 4, '1.11. Острый коронарный синдром без подъема ST');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (24, 4, '1.12. Постинфарктный ДМЖП');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (25, 5, '2.1. Эссенциальная артериальная гипертензия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (26, 5, '2.2. Вторичная артериальная гипертензия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (27, 6, '3.1. Фибрилляция предсердий');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (28, 6, '3.2. Трепетание предсердий');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (29, 6, '3.3. Тромбоз левого предсердия и его ушка');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (30, 6, '3.4. Наджелудочковая тахикардия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (31, 6, '3.5. Синдром WPW');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (32, 6, '3.7. Желудочковая тахикардия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (33, 6, '3.8. Состояние после фибрилляции желудочков');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (34, 6, '3.9. Желудочковая экстрасистолия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (35, 6, '3.10. Аритмогенная дисплазия правого желудочка');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (36, 6, '3.11. Синдром слабости синусового узла');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (37, 6, '3.12. Синдром Морганиьи-Адамса-Стокса');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (38, 6, '3.13. АВ-блокада ');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (39, 6, '3.14. Блокада левой ножки пучка Гиса');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (40, 6, '3.15. Синкопальные состояния неясного генеза');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (41, 7, '4.1. Дилатационная кардиомиопатия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (42, 7, '4.2. Гипертрофическая кардиомиопатия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (43, 7, '4.3. Рестриктивная кардиомиопатия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (44, 7, '4.4. Болезнь Такоцубо');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (45, 8, '5.3. NYHA I');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (46, 8, '5.4. NYHA II');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (47, 8, '5.5. NYHA III');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (48, 8, '5.6. NYHA IV');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (49, 9, '6.1. Дефект межпредсердной перегородки');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (50, 9, '6.2. Частичный аномальный дренаж легочных вен');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (51, 9, '6.3. Дефект межжелудочковой перегородки');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (52, 9, '6.4. Открытый артериальный проток');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (53, 9, '6.5. Двустворчатый аортальный клапан');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (54, 9, '6.6. Легочная гипертензия');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (55, 9, '6.7. Аномалия Эбштейна');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (56, 9, '6.8. Болезнь Барлоу (пролапс митрального клапана)');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (57, 10, '7.1. Стеноз митрального клапана');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (58, 10, '7.2. Недостаточность митрального клапана');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (59, 10, '7.3. Комбинированный порок митрального клапана');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (60, 10, '7.4. Аортальный стеноз');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (61, 10, '7.5. Недостаточность аортального клапана');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (62, 10, '7.6. Комбинированный порок аортального клапана');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (63, 11, '8.1. Аневризма аорты');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (64, 11, '8.2. Расслаивающая аневризма аорты');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (65, 11, '8.3. Коарктация аорты');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (66, 11, '8.6. Стенозирующий атеросклероз почечных артерий');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (67, 11, '8.7. Варикозная болезнь вен нижних конечностей');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (68, 11, '8.8. Тромбоэмболия легочной артерии ');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (69, 11, '8.9. Болезнь Такаясу');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (70, 12, '9.1. Перикардит');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (71, 12, '9.2. Миксома сердца');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (72, 12, '9.3. Саркома миокарда');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (73, 12, '9.4. Другие опухоли сердца');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (74, NULL, '10. Эндокринная патология');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (75, NULL, '11. Желудочно-кишечные заболевания');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (76, NULL, '12. Патология почек');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (77, NULL, '13. Неврологические заболевания');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (78, NULL, '14. Инфекционные заболевания');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (79, NULL, '15. Системные воспалительные заболевания');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (80, NULL, '16. Другие');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (81, 74, '10.1. Сахарный диабет 1 типа');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (82, 74, '10.2. Сахарный диабет 2 типа');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (83, 74, '10.3. Тиреотоксикоз');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (84, 74, '10.4. Гипотиреоз');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (85, 74, '10.5. Опухоли надпочечников');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (86, 75, '11.1 Язва желудка/12-перстной кишки');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (87, 75, '11.2 Грыжа пищеводного отверстия диафрагмы');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (88, 75, '11.3 Эрозивный гастрит/дуоденит');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (89, 75, '11.4 Панкреатит');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (90, 75, '11.5 Холецистит');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (91, 75, '11.6 Желчекаменная болезнь');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (92, 75, '11.7 Гепатит');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (93, 75, '11.8 Печеночная недостаточность');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (94, 75, '11.9 Геморрой');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (95, 75, '11.10 Колит');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (96, 76, '12.1. Почечная недостаточность');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (97, 76, '12.2. Нефролитиаз');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (98, 76, '12.3. Пиелонефрит');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (99, 76, '12.4. Гломерулонефрит');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (100, 77, '13.1    Перенесенное в прошлом ОНМК');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (101, 78, '14.1. Вирусный гепатит');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (102, 78, '14.2. Сифилис');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (103, 78, '14.3. ВИЧ');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (104, 78, '14.4. Туберкулез');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (105, 79, '15.1. Ревматизм');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (106, 79, '15.2. Ревматоидный артрит');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (107, 79, '15.3. Системная красная волчанка');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (108, 79, '15.4. Полиартрит');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (109, 79, '15.5. Другие заболевания соединительной ткани');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (110, 80, '16.1 Состояние после химио- и радиотерапии');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (111, 80, '16.2 Подагра');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (112, 80, '16.3 Болезни крови');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (113, 80, '16.4 Хронический тонзиллит');
INSERT INTO mypacs.diagnoz (fk_id, fk_parentid, fc_name)
             VALUES (114, 80, '16.5 Глаукома');

ALTER SEQUENCE mypacs.gen_diagnoz_id RESTART WITH 118;


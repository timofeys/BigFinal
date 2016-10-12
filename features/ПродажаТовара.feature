﻿# encoding: utf-8
# language: ru
@tree
Функционал: Поступление на склад
	Как  кладовщик
	Хочу автоматизировано учитывать поступления на склады
	Чтобы можно было контролировать товары по МОЛ
Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий:Продажа товара со склад
	Допустим Я подготавливаю дополнительные данные
	       И УдаляемДокументыЗаСегодня
	Когда  Я создаю документ продажи
			Когда Я нажимаю кнопку командного интерфейса "Продажа со склад"
			Тогда открылось окно "Продажа со склад"
			И     я нажимаю на кнопку "Создать"
			Тогда открылось окно "Продажа со склад (создание)"
			И     я выбираю значение реквизита "МОЛ" из формы списка
			Тогда открылось окно "МОЛ"
	И     В форме "МОЛ" в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000002' | 'МОЛ 2'        |
	И     В форме "МОЛ" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Продажа со склад (создание) *"
	И     я нажимаю кнопку выбора у поля "Вид документа"
	И     из выпадающего списка "Вид документа" я выбираю "Продажа"
	И     я выбираю значение реквизита "Склад" из формы списка
	Тогда открылось окно "Подовольственные кладовые"
	И     В форме "Подовольственные кладовые" в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000002' | 'Кладовая 2'   |
	И     В форме "Подовольственные кладовые" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Продажа со склад (создание) *"
	И     в поле "Сумма итого" я ввожу текст "1 000,00"
	И     в ТЧ "Материалы" я нажимаю на кнопку "Добавить"
	И     в ТЧ "Материалы" я выбираю значение реквизита "Материал" из формы списка
	Тогда открылось окно "Номенклатор материалов"
	И     В форме "Номенклатор материалов" в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование'             |
	| '000000001' | 'Cвинцовая проволока 5 мм' |
	И     В форме "Номенклатор материалов" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Продажа со склад (создание) *"
	И     в ТЧ "Материалы" я активизирую поле "Количество"
	И     в ТЧ "Материалы" в поле "Количество" я ввожу текст "100"
	И     В форме "Продажа со склад (создание) *" в ТЧ "Материалы" я завершаю редактирование строки
	И     в ТЧ "Материалы" я нажимаю на кнопку "Добавить"
	И     в ТЧ "Материалы" я выбираю значение реквизита "Материал" из формы списка
	Тогда открылось окно "Номенклатор материалов"
	И     В форме "Номенклатор материалов" в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование'          |
	| '000000008' | 'Асбестовый шнур 10 мм' |
	И     В форме "Номенклатор материалов" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Продажа со склад (создание) *"
	И     в ТЧ "Материалы" я активизирую поле "Количество"
	И     в ТЧ "Материалы" в поле "Количество" я ввожу текст "1"
	И     В форме "Продажа со склад (создание) *" в ТЧ "Материалы" я завершаю редактирование строки
	И     я нажимаю на кнопку "Провести"
	Тогда открылось окно "1С:Предприятие"
	И     я нажимаю на кнопку "OK"
	
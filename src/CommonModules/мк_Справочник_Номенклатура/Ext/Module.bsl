﻿#Область ПрограммныйИнтерфейс

// Инициализирует набор параметров, задающих флаги выполнения обработчиков.
//
// Параметры:
//  ПараметрыОбработчиков	 - Структура - Параметры обработчиков.
//
Процедура ОпределитьПараметрыОбработчиков(ПараметрыОбработчиков) Экспорт

	ПараметрыОбработчиков.Вставить("ПередЗаписью", Истина);
	ПараметрыОбработчиков.Вставить("ОбработкаПолученияПредставления", Истина);

КонецПроцедуры

// Процедура - обработчик подписки на событие "ПередЗаписью".
//	См. "СправочникОбъект.ПередЗаписью" в синтакс-помощнике.
//
// Параметры:
//  Источник  - СправочникОбъект - Источник события.
//  Отказ  - Булево - Флаг отмены.
//
Процедура ПередЗаписью(Источник, Отказ) Экспорт
	
КонецПроцедуры

// Процедура - обработчик подписки на событие "ОбработкаПолученияПредставления" для Справочников.
//	См. "СправочникМенеджер.ОбработкаПолученияПредставления" в синтакс-помощнике.
//
// Параметры:
//  Источник  - СправочникОбъект - Источник события.
//  Данные  - Структура - Содержит значения полей, из которых формируется представление.
//  Представление  - Строка - Строка, в которую нужно поместить представление объекта или ссылки.
//  СтандартнаяОбработка  - Булево - Признак выполнения стандартной обработки события.
//
Процедура ОбработкаПолученияПредставления(Источник, Данные, Представление, СтандартнаяОбработка) Экспорт
	
КонецПроцедуры

#КонецОбласти
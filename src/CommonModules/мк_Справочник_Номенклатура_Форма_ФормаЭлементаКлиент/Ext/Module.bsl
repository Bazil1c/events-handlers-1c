﻿#Область ПрограммныйИнтерфейс

// Инициализирует набор параметров, задающих флаги выполнения обработчиков.
//
// Параметры:
//  ПараметрыОбработчиков	 - Структура - Параметры обработчиков.
//
//
Процедура ОпределитьПараметрыОбработчиков(ПараметрыОбработчиков) Экспорт
	
	ПараметрыОбработчиков.Вставить("ПриЗакрытии", Истина);

КонецПроцедуры
 
// Вызывается в обработчике одноименного события формы объекта.
//	См. "УправляемаяФорма.ПриЗакрытии" в синтакс-помощнике.
//
// Параметры:
//   Форма - УправляемаяФорма - Форма объекта.
//   ЗавершениеРаботы - Структура - В данный параметр передается признак того, 
//					что форма закрывается в процессе завершения работы приложения.
//
Процедура ПриЗакрытии(Форма, ЗавершениеРаботы) Экспорт

КонецПроцедуры

#КонецОбласти
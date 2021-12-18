﻿
#Область ПрограммныйИнтерфейс

// Возвращает ссылку на общий модуль по имени.
// В отличие от типового метода не вызывает исключение.
//
// Параметры:
//  ИмяМодуля - Строка - имя общего модуля.
//
// Возвращаемое значение:
//  ОбщийМодуль - общий модуль.
//
Функция ОбщийМодуль(ИмяМодуля) Экспорт
	
	Модуль = Неопределено;
	
	УстановитьПривилегированныйРежим(Истина);
	Если НЕ Метаданные.ОбщиеМодули.Найти(ИмяМодуля) = Неопределено Тогда
		Модуль = ОбщегоНазначения.ВычислитьВБезопасномРежиме(ИмяМодуля);
		Если НЕ ТипЗнч(Модуль) = Тип("ОбщийМодуль") Тогда
			Модуль = Неопределено;
		КонецЕсли;
	КонецЕсли;
	
	Возврат Модуль;

КонецФункции

// Возвращает ссылку на общий модуль по имени.
// В отличие от типового метода не вызывает исключение.
//
// Параметры:
//  ИмяМодуля - Строка - имя общего модуля.
//
// Возвращаемое значение:
//  ОбщийМодуль - общий модуль.
//
Функция ОбщийМодульПереопределяемогоОбъекта(ИмяОбъекта) Экспорт
	
	Префикс = мк_ОбщегоНазначения.ПрефиксИмен();
	
	ИмяОбъекта = СтрЗаменить(ИмяОбъекта, ".", "_");
	
	ИмяМодуля = СтрШаблон("%1%2", Префикс, ИмяОбъекта);
	
	Модуль = ОбщийМодуль(ИмяМодуля);
	
	Возврат Модуль;

КонецФункции

// Возвращает общий префикс имен объектов конфигурации.
// 
// Возвращаемое значение:
//  Строка - Префикс имен конфигурации.
//
Функция ПрефиксИмен() Экспорт

	Возврат "мк_";

КонецФункции

#КонецОбласти

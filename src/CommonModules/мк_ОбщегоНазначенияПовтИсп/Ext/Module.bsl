﻿
#Область СлужебныйПрограммныйИнтерфейс

// Возвращает ссылку на общий модуль по имени объекта.
//
// Параметры:
//  ИмяОбъекта - Строка - Имя объекта.
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
 
// Возвращает существование общего модуля по имени.
//
// Параметры:
//  ИмяМодуля - Строка - Имя общего модуля.
//
// Возвращаемое значение:
//  Булево - Истина, если общий модуль существует.
//
Функция ОбщийМодульСуществует(ИмяМодуля) Экспорт
	
	УстановитьПривилегированныйРежим(Истина);
	
	Возврат (НЕ Метаданные.ОбщиеМодули.Найти(ИмяМодуля) = Неопределено);

КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Возвращает ссылку на общий модуль по имени.
// В отличие от типового метода не вызывает исключение.
//
// Параметры:
//  ИмяМодуля - Строка - Имя общего модуля.
//
// Возвращаемое значение:
//  ОбщийМодуль - общий модуль.
//
Функция ОбщийМодуль(ИмяМодуля)
	
	Модуль = Неопределено;
	
	Если ОбщийМодульСуществует(ИмяМодуля) Тогда
		Модуль = ОбщегоНазначения.ВычислитьВБезопасномРежиме(ИмяМодуля);
		Если НЕ ТипЗнч(Модуль) = Тип("ОбщийМодуль") Тогда
			Модуль = Неопределено;
		КонецЕсли;
	КонецЕсли;
	
	Возврат Модуль;

КонецФункции

#КонецОбласти

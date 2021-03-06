
#Область ПрограммныйИнтерфейс

// Возвращает ссылку на общий модуль или модуль менеджера по имени.
// Скопировано из БСП, убрано исключение.
//
// Параметры:
//  Имя - Строка - имя общего модуля.
//
// Возвращаемое значение:
//  ОбщийМодуль, МодульМенеджераОбъекта - общий модуль.
//
// Пример:
//	Если ОбщегоНазначенияКлиент.ПодсистемаСуществует("СтандартныеПодсистемы.ОбновлениеКонфигурации") Тогда
//		МодульОбновлениеКонфигурацииКлиент = ОбщегоНазначенияКлиент.ОбщийМодуль("ОбновлениеКонфигурацииКлиент");
//		МодульОбновлениеКонфигурацииКлиент.<Имя метода>();
//	КонецЕсли;
//
//	Если ОбщегоНазначенияКлиент.ПодсистемаСуществует("СтандартныеПодсистемы.ПолнотекстовыйПоиск") Тогда
//		МодульПолнотекстовыйПоискКлиент = ОбщегоНазначенияКлиент.ОбщийМодуль("ПолнотекстовыйПоискКлиент");
//		МодульПолнотекстовыйПоискКлиент.<Имя метода>();
//	КонецЕсли;
//
Функция ОбщийМодуль(Имя) Экспорт
	
	Модуль = Неопределено;

	Если мк_ОбщегоНазначенияВызовСервера.ОбщийМодульСуществует(Имя) Тогда
		
		Модуль = Вычислить(Имя); // BSLLS:ExecuteExternalCodeInCommonModule-off

	КонецЕсли; 
	
	Возврат Модуль;
	
КонецФункции
 
// Возвращает ссылку на общий модуль по имени объекта.
//
// Параметры:
//  ИмяОбъекта - Строка - Имя формы.
//
// Возвращаемое значение:
//  ОбщийМодуль - общий модуль.
//
Функция ОбщийМодульПереопределяемогоОбъекта(ИмяОбъекта) Экспорт
 	
	Префикс = мк_ОбщегоНазначенияВызовСервера.ПрефиксИмен();
	
	ИмяОбъекта = СтрЗаменить(ИмяОбъекта, ".", "_");
	ИмяМодуля = СтрШаблон("%1%2Клиент", Префикс, ИмяОбъекта);

	Возврат ОбщийМодуль(ИмяМодуля);

КонецФункции

#КонецОбласти
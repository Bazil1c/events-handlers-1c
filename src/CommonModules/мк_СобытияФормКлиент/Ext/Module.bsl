#Область ПрограммныйИнтерфейс

// Вызывается в обработчике одноименного события формы объекта.
//	См. "УправляемаяФорма.ПриОткрытии" в синтакс-помощнике.
//
// Параметры:
//	Форма - УправляемаяФорма - Форма объекта.
//  Отказ  - Булево - Отказ от выполнения обработчика.
//
Процедура ПриОткрытии(Форма, Отказ) Экспорт
	
	Модуль = ОбщийМодульФормы(Форма);

	ПараметрыОбработчиков = ПараметрыОбработчиковОбъекта(Модуль);
		
	Если ПараметрыОбработчиков.ПриОткрытии Тогда
		Модуль.ПриОткрытии(Форма, Отказ);
	КонецЕсли;

КонецПроцедуры	

// Вызывается в обработчике одноименного события формы объекта.
//	См. "УправляемаяФорма.ПриПовторномОткрытии" в синтакс-помощнике.
//
// Параметры:
//   Форма - УправляемаяФорма - Форма объекта.
//
Процедура ПриПовторномОткрытии(Форма) Экспорт
	
	Модуль = ОбщийМодульФормы(Форма);

	ПараметрыОбработчиков = ПараметрыОбработчиковОбъекта(Модуль);
		
	Если ПараметрыОбработчиков.ПриПовторномОткрытии Тогда
		Модуль.ПриПовторномОткрытии(Форма);
	КонецЕсли;

КонецПроцедуры

// Вызывается в обработчике одноименного события формы объекта.
//	См. "УправляемаяФорма.ОбработкаОповещения" в синтакс-помощнике.
//
// Параметры:
//   Форма - УправляемаяФорма - Форма объекта.
//   ИмяСобытия - Строка - Имя события.
//   Параметр - Произвольный - Параметр сообщения. Могут быть переданы любые необходимые данные.
//   Источник - Произвольный - Источник события.
//
Процедура ОбработкаОповещения(Форма, ИмяСобытия, Параметр, Источник) Экспорт
	
	Модуль = ОбщийМодульФормы(Форма);

	ПараметрыОбработчиков = ПараметрыОбработчиковОбъекта(Модуль);
		
	Если ПараметрыОбработчиков.ОбработкаОповещения Тогда
		Модуль.ОбработкаОповещения(Форма, ИмяСобытия, Параметр, Источник);	
	КонецЕсли;	
		
КонецПроцедуры

// Вызывается в обработчике одноименного события формы объекта.
//	См. "УправляемаяФорма.ОбработкаЗаписиНового" в синтакс-помощнике.
//
// Параметры:
//   Форма - УправляемаяФорма - Форма объекта.
//   НовыйОбъект - Произвольный - Добавленный в подчиненной форме объект.
//   Источник - УправляемаяФорма - Форма - источник события.
//   СтандартнаяОбработка - Булево - Признак выполнения стандартной (системной) обработки события.
//
Процедура ОбработкаЗаписиНового(Форма, НовыйОбъект, Источник, СтандартнаяОбработка) Экспорт
	
	Модуль = ОбщийМодульФормы(Форма);

	ПараметрыОбработчиков = ПараметрыОбработчиковОбъекта(Модуль);
		
	Если ПараметрыОбработчиков.ОбработкаЗаписиНового Тогда
		Модуль.ОбработкаЗаписиНового(Форма, НовыйОбъект, Источник, СтандартнаяОбработка);
	КонецЕсли;

КонецПроцедуры

// Вызывается в обработчике одноименного события формы объекта.
//	См. "УправляемаяФорма.ПередЗаписью" в синтакс-помощнике.
//
// Параметры:
//	Форма - УправляемаяФорма - Форма объекта.
//  Отказ  - Булево - Отказ от выполнения обработчика.
//	ПараметрыЗаписи - Структура - Структура, содержащая параметры записи.
//
Процедура ПередЗаписью(Форма, Отказ, ПараметрыЗаписи) Экспорт
	
	Модуль = ОбщийМодульФормы(Форма);

	ПараметрыОбработчиков = ПараметрыОбработчиковОбъекта(Модуль);
		
	Если ПараметрыОбработчиков.ПередЗаписью Тогда
		Модуль.ПередЗаписью(Форма, Отказ, ПараметрыЗаписи);
	КонецЕсли;

КонецПроцедуры

// Вызывается в обработчике одноименного события формы объекта.
//	См. "УправляемаяФорма.ПослеЗаписи" в синтакс-помощнике.
//
// Параметры:
//   Форма - УправляемаяФорма - Форма объекта.
//   ПараметрыЗаписи - Структура - Структура, содержащая параметры записи.
//
Процедура ПослеЗаписи(Форма, ПараметрыЗаписи) Экспорт
	
	Модуль = ОбщийМодульФормы(Форма);

	ПараметрыОбработчиков = ПараметрыОбработчиковОбъекта(Модуль);
		
	Если ПараметрыОбработчиков.ПослеЗаписи Тогда
		Модуль.ПослеЗаписи(Форма, ПараметрыЗаписи);	
	КонецЕсли;	

КонецПроцедуры

// Вызывается в обработчике одноименного события формы объекта.
//	См. "УправляемаяФорма.ВнешнееСобытие" в синтакс-помощнике.
//
// Параметры:
//   Форма - УправляемаяФорма - Форма объекта.
//   Источник - Строка - Источник внешнего события..
//   Событие - Строка - Наименование события. 
//   Данные - Строка - Данные для события.
//
Процедура ВнешнееСобытие(Форма, Источник, Событие, Данные) Экспорт
	
	Модуль = ОбщийМодульФормы(Форма);

	ПараметрыОбработчиков = ПараметрыОбработчиковОбъекта(Модуль);
		
	Если ПараметрыОбработчиков.ВнешнееСобытие Тогда
		Модуль.ВнешнееСобытие(Форма, Источник, Событие, Данные);
	КонецЕсли;

КонецПроцедуры

// Вызывается в обработчике одноименного события формы объекта.
//	См. "УправляемаяФорма.ПередЗакрытием" в синтакс-помощнике.
//
// Параметры:
//	Форма - УправляемаяФорма - Форма объекта.
//  Отказ - Булево - Отказ от выполнения обработчика.
//	ЗавершениеРаботы - Структура - В данный параметр передается признак того, 
//					что форма закрывается в процессе завершения работы приложения.
//	ТекстПредупреждения - Булево - Текст предупреждения пользователю при отказе.
//	СтандартнаяОбработка - Булево - Признак выполнения стандартной (системной) обработки события.
//	
Процедура ПередЗакрытием(Форма, Отказ, ЗавершениеРаботы, ТекстПредупреждения, СтандартнаяОбработка) Экспорт
	
	Модуль = ОбщийМодульФормы(Форма);

	ПараметрыОбработчиков = ПараметрыОбработчиковОбъекта(Модуль);
		
	Если ПараметрыОбработчиков.ПередЗакрытием Тогда
		Модуль.ПередЗакрытием(Форма, Отказ, ЗавершениеРаботы, ТекстПредупреждения, СтандартнаяОбработка);
	КонецЕсли;

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
	
	Модуль = ОбщийМодульФормы(Форма);

	ПараметрыОбработчиков = ПараметрыОбработчиковОбъекта(Модуль);
		
	Если ПараметрыОбработчиков.ПриЗакрытии Тогда
		Модуль.ПриЗакрытии(Форма, ЗавершениеРаботы);
	КонецЕсли;

КонецПроцедуры

// Вызывается в обработчике одноименного события формы объекта.
//	См. "УправляемаяФорма.ОбработкаВыбора" в синтакс-помощнике.
//
// Параметры:
//   Форма - УправляемаяФорма - Форма объекта.
//   ВыбранноеЗначение - Произвольный - Результат выбора в подчиненной форме. 
//					В случае множественного выбора возвращается массив выбранных значений.
//   ИсточникВыбора - УправляемаяФорма - Форма, где осуществлен выбор. 
//
Процедура ОбработкаВыбора(Форма, ВыбранноеЗначение, ИсточникВыбора) Экспорт
	
	Модуль = ОбщийМодульФормы(Форма);

	ПараметрыОбработчиков = ПараметрыОбработчиковОбъекта(Модуль);
		
	Если ПараметрыОбработчиков.ОбработкаВыбора Тогда
		Модуль.ОбработкаВыбора(Форма, ВыбранноеЗначение, ИсточникВыбора);
	КонецЕсли;

КонецПроцедуры

// Вызывается в обработчике одноименного события формы объекта.
//	См. "УправляемаяФорма.ОбработкаВыбора" в синтакс-помощнике.
//
// Параметры:
//   Форма - УправляемаяФорма - Форма объекта.
//   АктивныйОбъект - Произвольный - Активный объект.
//   Источник - УправляемаяФорма - Форма - источник сообщения. 
//
Процедура ОбработкаАктивизации(Форма, АктивныйОбъект, Источник) Экспорт
	
	Модуль = ОбщийМодульФормы(Форма);

	ПараметрыОбработчиков = ПараметрыОбработчиковОбъекта(Модуль);
		
	Если ПараметрыОбработчиков.ОбработкаАктивизации Тогда
		Модуль.ОбработкаАктивизации(Форма, АктивныйОбъект, Источник);
	КонецЕсли;

КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Инициализирует набор параметров, задающих флаги выполнения обработчиков.
//
// Возвращаемое значение:
//   Структура   - Обработчики, переопределенные для формы.
//
Функция ПараметрыОбработчиковПоУмолчанию()
	
	ПараметрыОбработчиков = Новый Структура;
	ПараметрыОбработчиков.Вставить("ПриОткрытии", Ложь);
	ПараметрыОбработчиков.Вставить("ПриПовторномОткрытии", Ложь);
	ПараметрыОбработчиков.Вставить("ОбработкаОповещения", Ложь);
	ПараметрыОбработчиков.Вставить("ОбработкаЗаписиНового", Ложь);
	ПараметрыОбработчиков.Вставить("ПередЗаписью", Ложь);
	ПараметрыОбработчиков.Вставить("ПослеЗаписи", Ложь);
	ПараметрыОбработчиков.Вставить("ВнешнееСобытие", Ложь);
	ПараметрыОбработчиков.Вставить("ПередЗакрытием", Ложь);
	ПараметрыОбработчиков.Вставить("ПриЗакрытии", Ложь);
	ПараметрыОбработчиков.Вставить("ОбработкаВыбора", Ложь);
	ПараметрыОбработчиков.Вставить("ОбработкаАктивизации", Ложь);

	Возврат ПараметрыОбработчиков;

КонецФункции

Функция ПараметрыОбработчиковОбъекта(Модуль)

	ПараметрыОбработчиков = ПараметрыОбработчиковПоУмолчанию();
	
	Если Модуль = Неопределено Тогда
		Возврат ПараметрыОбработчиков;
	КонецЕсли;	
	
	Модуль.ОпределитьПараметрыОбработчиков(ПараметрыОбработчиков);
		
	Возврат ПараметрыОбработчиков; 

КонецФункции

// Возвращает ссылку на общий модуль по имени формы.
// 	Общий модуль ищется по имени сформированному по имени формы, например:
// 	форма "Справочник.Номенклатура.Форма.ФормаЭлемента", модуль - "Справочник_Номенклатура_Форма_ФормаЭлементаКлиент".
//
// Параметры:
//  Форма - УправялемаяФорма - Форма объекта
//
// Возвращаемое значение:
//  ОбщийМодуль, Неопределено - Общий модуль.
//
Функция ОбщийМодульФормы(Форма)
	
	ИмяОбъекта = Форма.ИмяФормы;
	
	Возврат мк_ОбщегоНазначенияКлиент.ОбщийМодульПереопределяемогоОбъекта(ИмяОбъекта);

КонецФункции 

#КонецОбласти
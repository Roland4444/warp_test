curl -X POST \
-H "Content-Type: application/json" \
-d '{
	"fields": {
		"title": "New Deal",
		"typeId": "SALE",
		"stageId": "NEW"
	}
}' \
https://your-domain.bitrix24.com/rest/1/8g9l071eismy9q2l/crm.deal.add.json





curl -X POST \
-H "Content-Type: application/json" \
-d '{
	"fields": {
		"title": "New Deal",
		"typeId": "SALE",
		"stageId": "NEW"
	},
	"auth": "807ca26600631fce00007a4b00000001f0f107255033363e91ab16442bd901b2571ed9"
}' \
https://your-domain.bitrix24.com/rest/crm.deal.add.json




https://relits.bitrix24.ru/company/personal/user/336/tasks/?F_STATE=sV180

https://relits.bitrix24.ru/rest/336/onon0ac545fuacxm/

https://relits.bitrix24.ru/rest/336/onon0ac545fuacxm/profile.json


curl -X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{}' \
https://relits.bitrix24.ru/rest/336/onon0ac545fuacxm/profile 


curl -X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{}' \
https://relits.bitrix24.ru/rest/296/9tc2vltvblgd5oqp/profile 



9tc2vltvblgd5oqp
19.01.2026::


curl -X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{"fields":{"TITLE":"Название задачи","DEADLINE":"2025-12-31T23:59:59","CREATED_BY":456,"RESPONSIBLE_ID":123,"UF_CRM_TASK":["L_4","C_7","CO_5","D_10"],"UF_TASK_WEBDAV_FILES":["n12345","n67890"]}}' \
https://relits.bitrix24.ru/rest/296/9tc2vltvblgd5oqp/tasks.task.add





TODO:: уточнить данные по сотрудникам, загрузить им фотки


Пигалева Юлия -> отчество?    225   Вячеславовна
Наталья Максимова -> фото?
Бочаров Денис -> номер ?
Бочарова Елена -> 885120484484
Оганесян -> номер ?
Нарядчикова  -> inaryadchikova@panorama-dom.ru   ?
Сиденко Наталья -> фото, отчество?      233   Викторовна
Пчелинцева Анна -> отчество?            235   Юрьевна
Мокрая Светлана -< отчество?            241   Алексеевна
Шафеев Руслан -> отчество?              247   Ахмеднадырович
Шевченко Алексей  -> Отчество?          255   Владимирович
Сидагалиев Нурлан  -> Отчество?         259   Мураткалиевич
Набиулина Саида -> Отчество   snabiulina@ressk.ru   ?       267    Магарамовна
Позднякова Анастасия -> отчество, мобильный?    283     Сергеевна
Мамонтов Алексей -> отчество, должность?        285     Петрович
Людмила Фомина -> Отчество, дата рождения   должность   292
Наталья Григорьева -> фото?

curl -X POST \
  'https://<ваш_портал>.bitrix24.ru/rest/user.update.json' \
  -d 'auth=<ваш_токен>' \
  -d 'ID=5319816' \
  -d 'FIELDS[ACTIVE]=false'


  curl -X POST \
  "https://ваш-домен.bitrix24.ru/rest/user.get" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "auth=ваш_токен_доступа" \
  -d "filter[NAME]=Ива%" \
  -d "filter[LAST_NAME]=Пет%" \
  -o response.json


  https://relits.bitrix24.ru/rest/336/l5rt3vw1retrxulv/

   curl -X POST \
  "https://relits.bitrix24.ru/rest/user.get" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "auth=l5rt3vw1retrxulv" \
  -d "filter[NAME]=Ива%" \
  -d "filter[LAST_NAME]=Пет%" \
  -o response.json


https://relits.bitrix24.ru/rest/336/l5rt3vw1retrxulv/

curl -X POST \
  "https://relits.bitrix24.ru/rest/336/stp81y0u2xk9lzdz/user.get" \
  -H "Content-Type: application/json" \
  -d '{
    "filter": {
      "NAME": "Иван",
      "LAST_NAME": "Петров"
    }
  }'

  https://relits.bitrix24.ru/rest/336/stp81y0u2xk9lzdz/

      curl -X POST \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"filter":{"!%LAST_NAME":"Фомина"}}' \
    https://relits.bitrix24.ru/rest/336/stp81y0u2xk9lzdz/user.get

	 curl -X POST \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"filter":{"@PERSONAL_CITY":["Москва","Санкт-Петербург"]}}' \
	https://relits.bitrix24.ru/rest/336/stp81y0u2xk9lzdz/user.get


curl -X POST \
https://relits.bitrix24.ru/rest/336/stp81y0u2xk9lzdz/user.get \
-H "Content-Type: application/json" \
-d '{
    "filter": {
     "NAME": "Роман",
     "LAST_NAME": "Пастушков"
    },
    "select": ["ID", "NAME", "LAST_NAME", "EMAIL"]
}'


curl -X POST \
https://relits.bitrix24.ru/rest/336/stp81y0u2xk9lzdz/user.get \
-H "Content-Type: application/json" \
-d '{
    "filter": {
     "NAME": "Роман",
     "LAST_NAME": "Пастушков"
    },
    "select": ["ID", "NAME", "LAST_NAME", "EMAIL"],
    "limit": 0
}'


http://localhost:11111/custom

https://relits.bitrix24.ru/rest/336/azn550dfzrbeqiil/

curl -X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{
    "ID": 292,
    "SECOND_NAME": "xxxxxxxx"
}' \
https://relits.bitrix24.ru/rest/336/phw0peq7tp03a91u/user.update


x-www-form-urlencoded  ID, SECOND name
 curl -X POST -H "Content-Type: application/json" -H "Accept: application/json" -d '{
    "ID": 292,
    "SECOND_NAME": "xxxxxxxx222222"
}' https://relits.bitrix24.ru/rest/336/phw0peq7tp03a91u/user.update


https://relits.bitrix24.ru/rest/336/ldo7yqium9v19hng/


338 to delete

curl -X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d '{}' \
https://relits.bitrix24.ru/rest/338/7kzrsa06v4vppzgb/user.current


curl -X POST \
https://relits.bitrix24.ru/rest/338/7kzrsa06v4vppzgb/user.delete \
-H "Content-Type: application/json" \
-d '{
    "id": 12345
}'




   curl -X POST \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{
        "UF_DEPARTMENT": 1,
        "SORT": "ID",
        "ORDER": "asc",
        "start": 10
    }' \
    https://relits.bitrix24.ru/rest/336/5kex81viff9ijsb8/user.search


https://relits.bitrix24.ru/rest/336/5kex81viff9ijsb8/




curl -X POST "https://relits.bitrix24.ru/rest/336/5kex81viff9ijsb8/user.get" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "ID=1"


  https://relits.bitrix24.ru/rest/336/5kex81viff9ijsb8/

# Или с использованием query string (GET запрос)
curl "https://ваш-домен.bitrix24.ru/rest/1/ваш-вебхук/user.get?ID=1"

# Получение нескольких пользователей
curl -X POST "https://ваш-домен.bitrix24.ru/rest/1/ваш-вебхук/user.get" \
  -d "ID[0]=1&ID[1]=2&ID[2]=3"

# Получение пользователя с определенными полями
curl -X POST "https://ваш-домен.bitrix24.ru/rest/1/ваш-вебхук/user.get" \
  -d "ID=1&SELECT[]=ID&SELECT[]=NAME&SELECT[]=LAST_NAME&SELECT[]=EMAIL"



  curl -X POST "https://relits.bitrix24.ru/rest/336/5kex81viff9ijsb8/user.get" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "ID=1"


294


curl -X POST \
https://relits.bitrix24.ru/rest/336/5kex81viff9ijsb8/user.update \
-H "Content-Type: application/json" \
-d '{
    "id": 344,
    "fields": {
     "REPORTS_TO_ID": 294
    }
}'


curl -X POST \
  -H "Content-Type: application/json" \
  -d '{
        "ID": 123,  // ID подразделения
        "UF_HEAD": 456 // ID нового руководителя подразделения (пользователя)
      }' \
  "https://ВАШ_ДОМЕН.bitrix24.ru/rest/1/XXXXXX/department.update.json?auth=XXXXXXXXXXXX"



  curl -X POST "https://relits.bitrix24.ru/rest/336/5kex81viff9ijsb8/department.get" \
-H "Content-Type: application/json" \
-d '{
    "ID": 23
}'

79   сикорский
294 юдкина
  curl -X POST "https://relits.bitrix24.ru/rest/336/r403wy0csnxmptxx/department.get" \
-H "Content-Type: application/json" \
-d '{
    "ID": 23
}'


curl -X POST "https://ваш_домен.bitrix24.ru/rest/department.get" \
-H "Content-Type: application/json" \
-d '{
    "ID": 23  
}'


https://relits.bitrix24.ru/rest/336/i9iqyw31yy0pvw1i/

curl -X POST "https://relits.bitrix24.ru/rest/336/i9iqyw31yy0pvw1i/user.get" \
-H "Content-Type: application/json" \
-d '{
    "FILTER": {
        "UF_DEPARTMENT": 23
    },
    "SELECT": ["ID", "NAME", "LAST_NAME", "UF_HEAD"]
}'


curl -X POST "https://relits.bitrix24.ru/rest/336/i9iqyw31yy0pvw1i/department.update" \
-H "Content-Type: application/json" \
-d '{
    "ID": 23,
    "FIELDS": {
        "UF_HEAD": 79  
    }
}'

curl -X POST "https://relits.bitrix24.ru/rest/336/i9iqyw31yy0pvw1i/user.get" \
-H "Content-Type: application/json" \
-d '{
    "FILTER": {
        "UF_DEPARTMENT": 23
    },
    "SELECT": ["ID", "NAME", "LAST_NAME", "UF_HEAD"]
}'


curl -X POST \
https://relits.bitrix24.ru/rest/336/i9iqyw31yy0pvw1i/user.login.get \
-H "Content-Type: application/json" \
-d '{
    "filter": {
     "USER_ID": 1
    },
    "select": ["ID", "USER_ID", "LOGIN_DATE", "IP_ADDRESS", "USER_AGENT"]
}'


curl -X POST "https://relits.bitrix24.ru/rest/336/i9iqyw31yy0pvw1i/user.access" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "ID=1"

  curl -X POST "https://relits.bitrix24.ru/rest/336/i9iqyw31yy0pvw1i/event.get" \
  -d "FILTER[ENTITY_TYPE]=USER" \
  -d "FILTER[ENTITY_ID]=1" \
  -d "FILTER[EVENT_TYPE]=LOGIN" \
  -d "ORDER[ID]=DESC"


  curl -X POST "https://relits.bitrix24.ru/rest/336/i9iqyw31yy0pvw1i/user.get" \
  -d "ID=1" \
  -d "SELECT[]=ID" \
  -d "SELECT[]=NAME" \
  -d "SELECT[]=LAST_NAME" \
  -d "SELECT[]=LAST_LOGIN" \
  -d "SELECT[]=LAST_ACTIVITY_DATE"



  curl -v -X POST "https://relits.bitrix24.ru/rest/336/i9iqyw31yy0pvw1i/user.access" \
  -d "ID=1" \
  -o response.json


  curl -i -X POST "https://relits.bitrix24.ru/rest/336/i9iqyw31yy0pvw1i/user.access" \
  -d "ID=1" \
  -o full_response.txt




  curl -X POST "https://relits.bitrix24.ru/rest/336/i9iqyw31yy0pvw1i/user.access" \
  -d "ID=1" \
  -d "ORDER[DATE_INSERT]=DESC" \
  -d "limit=10"

# Получить информацию о пользователе
curl -X POST "https://relits.bitrix24.ru/rest/336/i9iqyw31yy0pvw1i/user.get" \
  -d "ID=1" \
  -d "SELECT[]=LAST_LOGIN" \
  -d "SELECT[]=LAST_ACTIVITY_DATE"

# Получить события
curl -X POST "https://relits.bitrix24.ru/rest/336/dzzw89mh9yyphwjc/event.get" \
  -d "FILTER[ENTITY_TYPE]=USER" \
  -d "FILTER[ENTITY_ID]=1" \
  -d "FILTER[EVENT_TYPE]=LOGIN" \
  -d "ORDER[DATE_INSERT]=DESC"

# Проверить рабочее время
curl -X POST "https://ваш-домен.bitrix24.ru/rest/1/вебхук/timeman.status" \
  -d "USER_ID=123" \
  -d "DATE_START=2024-01-01"





ШЕВЧЕНКО

├─────────────┬───────────────────────────────────────────────┤
│ Слой        │ Технологии (в порядке предпочтения)           │
├─────────────┼───────────────────────────────────────────────┤
│ Frontend    │ 1. SvelteKit (практичность + инновация)       │
│             │ 2. Solid.js (глубокая реактивность)           │
│             │ 3. Vanilla TS + htmx (максимальный контроль)  │
├─────────────┼───────────────────────────────────────────────┤
│ Backend     │ 1. Rust (Axum) для критичных сервисов         │
│ (API/Logic) │ 2. Haskell (Servant) для доменной чистоты     │
│             │ 3. Go (Gin) для высоконагруженных API         │
│             │ 4. Elixir (Phoenix) для real-time             │
├─────────────┼───────────────────────────────────────────────┤
│ События &   │ 1. Apache Kafka (ядро событийной системы)     │
│ Сообщения   │ 2. RabbitMQ (для рабочих очередей)            │
│             │ 3. Redis (pub/sub, кэш)                       │
├─────────────┼───────────────────────────────────────────────┤
│ Данные      │ 1. PostgreSQL (основное хранилище)            │
│             │ 2. Redis (кэш, сессии, быстрые данные)        │
│             │ 3. Cassandra (масштабируемое хранилище событий)│
│             │ 4. Neo4j (для графовых связей)                │
├─────────────┼───────────────────────────────────────────────┤
│ Методология │ Event-Driven Architecture (EDA) +             │
│             │ Domain-Driven Design (DDD) +                  │
│             │ Event Sourcing/CQRS (для сложных доменов) +   │
│             │ Property-Based Testing (Haskell/Elixir)   














Спикеры по ключевым технологиям для вашего стека
1. Event-Driven Architecture (EDA) + Event Sourcing
Международные:
Greg Young — создатель CQRS, Event Sourcing; автор "Event Sourcing" книги

Резонанс с вами: Технократичный, структурный подход к EDA (Козерог)

Ключевое выступление: "The Art of Destroying Software"

Martin Fowler — автор статей о EDA, CQRS

Резонанс: Баланс теории и практики (Близнецы + Козерог)

Статья: "What do you mean by 'Event-Driven'?"

Alberto Brandolini — создатель Event Storming

Резонанс: Визуальное мышление о событиях (Нептун + Близнецы)

Книга: "EventStorming"

Udi Dahan — создатель NServiceBus, эксперт по распределённым системам

Резонанс: Прагматичный подход к сложным системам (Плутон + Козерог)

Kenny Baas-Schwegler — практик Event Storming, DDD

Резонанс: Сочетание глубины и доступности

Русскоязычные:
Тимур Шемсединов — Event-Driven Architecture на практике

Алексей Бармишин — DDD и event-driven системы

Артём Кобзев — практический опыт построения EDA

2. Domain-Driven Design (DDD)
Основоположники:
Eric Evans — автор книги "Domain-Driven Design: Tackling Complexity in the Heart of Software"

Резонанс: Глубина понимания домена (Плутон в Скорпионе)

Vaughn Vernon — автор "Implementing Domain-Driven Design", "Domain-Driven Design Distilled"

Резонанс: Структурный, практический подход (Козерог)

Практики:
Scott Millett — соавтор "Patterns, Principles, and Practices of Domain-Driven Design"

Nick Tune — стратегический DDD, Team Topologies

Резонанс с 9 домом: Масштабирование DDD на большие организации

Русскоязычные:
Владимир Хориков — автор "Unit-тестирование" и материалов по DDD

Сергей Грибков — практический DDD в .NET

3. Property-Based Testing (PBT)
Пионеры:
John Hughes — соавтор QuickCheck (Erlang/Haskell), автор PropEr

Резонанс: Академическая глубина + практичность (Плутон + Козерог)

Ключевое выступление: "Testing the Hard Stuff and Staying Sane"

Koen Claessen — соавтор QuickCheck

Популяризаторы:
Scott Wlaschin — автор "Domain Modeling Made Functional", объясняет PBT на F#

Резонанс: Ясное объяснение сложных концепций (Близнецы)

Сайт: fsharpforfunandprofit.com

Jessica Kerr — объясняет PBT на примерах из реального мира

Резонанс: Практичность + теория

Fred Hebert — автор "Property-Based Testing with PropEr, Erlang, and Elixir"

Резонанс: Практический подход к PBT в production

4. Data-Oriented Design (DOD)
Основные:
Mike Acton — бывший ведущий инженер Insomniac Games, автор "Data-Oriented Design"

Резонанс: Агрессивный, бескомпромиссный подход к производительности (Марс в Овне)

Легендарное выступление: "Data-Oriented Design and C++"

Andrew Kelley — создатель языка Zig, пропагандист DOD

Резонанс: Системный подход (Козерог), инновации (Уран)

Jonathan Blow — создатель игр Braid, The Witness, автор языка Jai

Резонанс: Глубокое понимание систем (Плутон)

Практики:
Stoyan Nikolov — DOD в играх и high-performance computing

Bobby Anguelov — DOD в AAA играх

5. CQRS + Event Sourcing
Эксперты:
Greg Young (уже упомянут) — основной спикер

Jérémie Chassaing — практик CQRS/ES в .NET

Derek Comartin — практические видео по CQRS/ES

Chris Richardson — микросервисы + CQRS

Книга: "Microservices Patterns"

6. Functional Programming + Architecture
Для Haskell/FP:
Simon Peyton Jones — разработчик Glasgow Haskell Compiler

Резонанс: Глубина + ясность (Плутон + Близнецы)

Edward Kmett — библиотеки lens, profunctors

Резонанс: Экстремальная глубина абстракций (Плутон в Скорпионе)

Для F#:
Scott Wlaschin (уже упомянут)

Don Syme — создатель F#

Isaac Abraham — автор "Get Programming with F#"

Для Clojure:
Rich Hickey — создатель Clojure, автор "Simple Made Easy"

Резонанс: Глубина мысли (Плутон), ясность выражения (Близнецы)

Stuart Halloway — сооснователь Cognitect, автор "Programming Clojure"

7. Rust + Systems Programming
Core team:
Steve Klabnik — соавтор книги "The Rust Programming Language"

Резонанс: Отличный учитель (Близнецы)

Carol Nichols — соавтор книги по Rust

Niko Matsakis — работа над системой владения Rust

Резонанс: Глубокое понимание систем (Плутон)

Практики:
Jon Gjengset — автор YouTube-канала о продвинутом Rust

Резонанс: Подробные, глубокие объяснения (Плутон + Козерог)

Ryan Levick — Microsoft, Rust в production

8. Reactive Programming + Reactive Systems
Эксперты:
Jonas Bonér — создатель Akka, автор реактивных манифестов

Резонанс: Системное мышление (Козерог)

Roland Kuhn — соавтор "Reactive Design Patterns"

Martin Thompson — high-performance computing, mechanical sympathy

Резонанс: Глубина понимания hardware (Плутон)

9. Software Architecture
Методологии:
Robert C. Martin (Uncle Bob) — Clean Architecture, SOLID

Резонанс: Структурный подход (Козерог)

Mark Richards — автор "Software Architecture Patterns"

Neal Ford — архитектура, evolutionary architecture

Резонанс: Баланс структуры и адаптивности (Козерог + Близнецы)

10. Русскоязычное сообщество
DDD/EDA:
Тимур Шемсединов — Event-Driven Architecture

Алексей Бармишин — DDD, микросервисы

Владимир Хориков — DDD, тестирование

Антон Семенченко — CQRS/Event Sourcing на практике

Rust/Systems:
Андрей Листопадов — Rust, системы реального времени

Михаил Панков — Rust в production

FP:
Роман Чепляка — F#, функциональное программирование

Александр Гранин — Haskell, зависимые типы

Как изучать системно (по вашим аспектам):
Фаза 1: Наблюдение (Нептун ретроградный)
Смотрите выступления без цели сразу применять

Greg Young → "The Art of Destroying Software"

Rich Hickey → "Simple Made Easy"

John Hughes → "Testing the Hard Stuff"

Состояние: Как слушаете музыку — воспринимаете паттерны

Фаза 2: Структурирование (Козерог)
Читайте книги по порядку:

"Domain-Driven Design" → Evans

"Implementing Domain-Driven Design" → Vernon

"Event Storming" → Brandolini

Создайте карту знаний с связями между концепциями

Фаза 3: Глубинная практика (Плутон)
Выберите один проект для глубокого погружения

Примените все методики к одному домену

Рефакторите несколько раз, углубляя понимание

Фаза 4: Коммуникация (Близнецы)
Напишите статьи о своём опыте

Сделайте доклад в локальном сообществе

Обсудите с другими практиками

Ключевые выступления для старта:
День 1-7: Видение
Rich Hickey — "Simple Made Easy" (пересмотр базовых понятий)

Greg Young — "The Art of Destroying Software" (новый взгляд на архитектуру)

John Hughes — "Testing the Hard Stuff" (новый подход к тестированию)

День 8-30: Структура
Серия выступлений по DDD от Vaughn Vernon

Event Storming workshop от Alberto Brandolini

Mike Acton — "Data-Oriented Design" (производительность)

День 31-90: Глубина
Edward Kmett — лекции по продвинутому Haskell

Jon Gjengset — продвинутый Rust на практике

Jonas Bonér — реактивные системы

Предупреждение (по вашим аспектам):
Опасность Нептуна ретроградного:
Вы можете уйти в "вечное изучение", никогда не начиная делать.

Решение: После каждого 3-го просмотренного выступления — 1 день практики.

Опасность Козерога:
Создадите слишком жёсткую систему, которая не адаптируется.

Решение: Оставляйте 20% системы "неструктурированными" для адаптации.

Опасность Плутона:
Углубитесь в одну технологию, игнорируя остальные.

Решение: Цикл 3 недели погружения → 1 неделя обзора смежных областей.

Опасность Близнецов:
Переключитесь между слишком многими технологиями.

Решение: Фокус на одной парадигме (EDA) на 6 месяцев.

Итоговая рекомендация:
Начните с: Greg Young + Alberto Brandolini + Scott Wlaschin
Это даст: EDA/DDD (структура) + PBT (тестирование свойств)

Потом добавьте: Mike Acton + Jon Gjengset
Это даст: DOD (производительность) + Rust (системное программирование)

Для интеграции: Rich Hickey + John Hughes
Это даст: Глубинное понимание + новые подходы к тестированию

Ваш уникальный стек спикеров отразит вашу карту: структура (Козерог) + глубина (Плутон) + коммуникация (Близнецы) + интуиция (Нептун ретроградный).

https://youtu.be/srQt1NAHYC0
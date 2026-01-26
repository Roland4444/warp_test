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
















Сумму дневного + ночного


Квартира №1

Квартира №2

Квартира №3

Квартира №5

Квартира №6

Квартира №8

Квартира №10

Квартира №11

Квартира №12

Квартира №15

Квартира №19

Квартира №20

Квартира №23

Квартира №28

Квартира №29

Квартира №40

Квартира №43

Квартира №49

Квартира №50

Квартира №60

Квартира №63

Квартира №64

Квартира №68

Квартира №70

Квартира №71

Квартира №73

Квартира №84

Квартира №86

Квартира №90

Квартира №93

Квартира №105

Квартира №117

Квартира №134

Квартира №149

Квартира №156

Квартира №158

Квартира №159

Квартира №160

Квартира №168

Квартира №169

Квартира №173

Квартира №174

Квартира №175

Квартира №177

Квартира №185

Квартира №187

Квартира №207

Квартира №215

Квартира №217

Квартира №226

Квартира №236

Квартира №254

Квартира №259

Квартира №260

Квартира №263

Квартира №270

Квартира №271

Квартира №273

Квартира №277

Квартира №279

Квартира №286

Квартира №308

Квартира №312

Квартира №321

Квартира №326

Квартира №332

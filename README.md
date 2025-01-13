
## MoodiQuest

MoodiQuest — это приложение, созданное для того, чтобы помочь вам вырваться из апатии и снова найти радость в повседневной жизни.
Многие из нас сталкивались с ощущением застоя: ничего не хочется делать, вокруг становится грязнее и менее уютно, что ещё больше усиливает нежелание действовать.
MoodiQuest поможет разорвать этот замкнутый круг, шаг за шагом. Это ни в коем случае не заменит вам поход к психологу или другим специалистам

## Немного подробнее

MoodiQuest мотивирует пользователей делать небольшие, но значимые шаги, чтобы разорвать круг апатии. Каждый день приложение предлагает три уникальных квеста, которые способствуют
развитию креативности, стремления к действию и вдохновения. Вы можете выполнять эти задания, отслеживать свой прогресс и даже заменять задания на случайные, если они вам не подходят.

Цель проста: облегчить первый шаг, который станет началом цепочки позитивных изменений в вашей жизни.

## Зачем это мне? 

Я создаю этот проект для того, чтобы подняь свои скиллы в разработке и тестировании. И если по секрету, то в современном мире иногда очень хочется иметь такое приложение у себя под рукой. 

## Из чего состоит MoodiQuest?

Состоит из клиента и сервера. Клиент - iOS приложение. Сервер - бэкенд на Spring с использованием микросервисной архитектуры: 
1. Микросервис, отвечающий за работу с БД называется moodiQuest.databaseService
2. Микросервис, отвечающий за работу с запросами - moodiQuest.questService

Многие опытные люди могут спросить "А зачем микросервисы, это же дикое переусложнение helloWorld приложения?". И они даже будут в чем-то правы. Но я пошел по пути усложнения, потому что мне было весело. 

## Какие технологии использовались в проекте?

 **PostgreSQL** используется в качестве основной реляционной базы данных для хранения информации о квестах.
 
**Redis** используется в качестве кеша для daily эндпоинта.

**MongoDB** поднял ее чтобы посмотреть что такое noSql, а потом было решено складывать в эту БД предложения от пользователей.

**Swagger**  был поднят для документации.

**TeamCity** нужен чтобы я ничего не делая получал готовую сборку микросервисов после пуша. И нужен был чтобы я разобрался с работой энвайромент переменных.

**Docker** на небе только и разговоров, что о контейнерезации... 

Докер вместе с ТимСити научили меня никогда не использовать пробелы в паролях в энвайромент переменных и что можно очень удобно деплоить собранную Джаву на VDS.

**Grafana** вместе с Prometheus удовлетворяют мою потребность в красивых графиках. Они показывают количество запросов, не пятисотим ли мы и сколько процессора кушаем.

**ELK** бесценнейший опыт попытки установки данного стека на VDS с 2Гб ОЗУ. Т.к. я не бэкендер, то позволить себе хостинг с нужной конфигурацией виртуального компьютера я не могу, поэтому раскатил его только локально на домашнем ПК, чтобы посмотреть на самую новую версию и немного научиться формировать логи в Spring.

**Домен и SSL** для проекта был куплен домен, который потом успешно получилось связать с VDS. С помощью Certbot был установлен SSL-сертификат, для того, чтобы Хром особо не ругался. 

**Nginx** в качестве прокси. 

**Что-то еще** тоже было поднято, но я уже забыл что :(


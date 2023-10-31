# conf_monitoring_tools

About:
Репозиторій для швидкого налаштування інструментів моніторинку Grafana,Prometheus в парі з Alert Manager,був протестований на Ubuntu server 22.04 LTS 

Ціль:
Моніторити три ноди(або більше за бажанням),всі контейнери,маршрутизатор Mikrotik,Windows 10,веб сервер,проксі сервер

Залежності:
Встановлений Docker and compose,створений кластер на всіх машинах

Інструкція:
open_docker_metrics.sh запускати тільки тоді,коли у вас не відкритий порт на метрики контейнерів,в іншому разі НЕ ЗАПУСКАТИ!
main_manager.sh запускати на основну ноду(manager) aka Leader
side_man_or_work.sh запускати на workers або на претендентів manager'а

Grafana dashboards:
1860 node exporter
12197 snmp exporter
14499 windows exporter
11939 docker swarm monitor
13946 cAdvisor docker
15798 Docker monitoring




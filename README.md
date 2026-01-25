## Как это работает

Сервер запускается на основе образа `marctv/minecraft-papermc-server:1.21.4-232`. 

## Бекапирование

Чтобы настроить бекапирование надо ввести `crontab -e` и записать конфигурацию вида:

```bash
0 6 * * 1,3,5,7 cd /home/<username>/PaperMC_dockerized && ./backup-world.sh > /home/<username>/backup-world.log 2>&1
```

Эта конфигурация запускает скрипт в 6:00 каждый нечетный день недели
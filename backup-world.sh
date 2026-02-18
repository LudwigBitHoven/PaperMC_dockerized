#!/usr/bin/env bash

# берем время запуска скрипта
dt=$(date +"%Y-%m-%d-%H-%M-%S")
echo $dt начинаю бекапирование

# бекапируем миры
zip -r "minecraft_data/backups/world/${dt}.zip" "minecraft_data/world" 
zip -r "minecraft_data/backups/world_nether/${dt}.zip" "minecraft_data/world_nether" 
zip -r "minecraft_data/backups/world_the_end/${dt}.zip" "minecraft_data/world_the_end" 

# удаляем бекапы старше 14 дней
echo Файлы на удаление: $(find ./minecraft_data/backups/ -type f -mtime +14 -delete)

# minecraft-server-1.20.1
## Самый хайповый сервер по майнкрафту в мире!!! Всем дикой сваги на ход ноги ребята)))



При использовании связки Windows > WSL > Docker:

На Windows: добавить правило брандмауэра - разрешить входящий трафик по порту 25565; команда powershell: ```netsh interface portproxy add v4tov4 listenport=3000 listenaddress=0.0.0.0 connectport=3000 connectaddress=<ip адрес wsl>```.

WSL: билд контейнера: ```docker build -m "<название контейнера>"```; запуск: ```docker run -p 25565:25565 <название собранного контейнера>```.

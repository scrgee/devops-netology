# devops-netology
This is first edit at README.md gor Netology homework

This is Line was added for fun

#### Описание какие файлы не будут отслеживаться в `terraform/.gitignore`

1) Игнорирование файлов каталога `.terraform` во всех поддиректориях если встречается

- `**/.terraform/*`

2) Все файлы `.tfstate` и файлы в имени которых есть `.tfstate.`
- `*.tfstate`
- `*.tfstate.*`

3) Игнорирование файла `crash.log`
- `crash.log`

4) Игнорирование всех файлов `.tfvars`
- `*.tfvars`

5) Игнорировать файлы переопределения `override.tf`, `override.tf.json` поскольку они обычно используется для переопределения
локальных ресурсов и поэтому они не регистрировались. А также все файлы `.tf` оканчивающиеся
на `_override` и файлы `.json` оканчивающиеся на `_override.tf`

- `override.tf`
- `override.tf.json`
- `*_override.tf`
- `*_override.tf.json`

6) Включите файлы переопределения в исключение, которые вы хотите добавить в систему 
контроля версии, используя отрицательный шаблон `!`

- `!example_override.tf`

7) Включите файлы `tfplan` для игнорирования плана команд: `terraform plan -out=tfplan`
- example: `*tfplan*`

8) Игнорировать конфигурационные файлы CLI `.terraformrc` и файл `terraform.rc`
- `.terraformrc`
- `terraform.rc`

#Домашнее задание №3.3
 - `добавление новой строки`
 
 #Домашнее задание №3.4
 - `использование IDE Tools`
 - `Действительно упрощает выполнение коммитов`
 
 заметил что Git сам выполнил команду в консоли при коммите:

`git -c credential.helper= -c http.sslBackend=schannel -c core.quotepath=false -c log.showSignature=false add --ignore-errors -A -f -- README.md` 

Следующая строка:

`git -c credential.helper= -c http.sslBackend=schannel -c core.quotepath=false -c log.showSignature=false commit -F C:\Users\bzhumabayev\AppData\Local\Temp\git-commit-msg-.txt --
[fix 9bf8dc5] Was commited by Graphic Interface via IDE PyCharm`
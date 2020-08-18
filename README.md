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
# Агент для SmartAutomatic OS

Это агент ОС для SmartAutomatic. Позволяет SmartAutomatic Supervisor
взаимодействовать с операционной системой.

## Установка и обновление

### Использование SmartAutomatic OS

Агент ОС предустановлен вместе с SmartAutomatic OS.

Обновления являются частью обновлений SmartAutomatic OS.

## Разработка

### Компиляция

```shell
go build -ldflags "-X main.version="
```

### Тесты

```shell
gdbus introspect --system --dest org.sas.os --object-path /org/sas/os
```

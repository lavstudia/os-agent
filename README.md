# Агент для SmartAutomatic OS

Это агент ОС для SmartAutomatic. Позволяет SmartAutomatic Supervisor
взаимодействовать с операционной системой.

## Установка и обновление

### Использование SmartAutomatic OS

Агент ОС предустановлен вместе с SmartAutomatic OS.

Обновления являются частью обновлений SmartAutomatic OS.

## Разработка

# Admin PowerShell
```shell
go tool dist install -v pkg/runtime
go install -v -a std
```
# PowerShell
```shell
$Env:GOOS = "linux"; $Env:GOARCH = "amd64"
go build -ldflags="-s -w" -o "sa_amd64"
$Env:GOOS = "linux"; $Env:GOARCH = "386"
go build -ldflags="-s -w" -o "sa_i386"
$Env:GOOS = "linux"; $Env:GOARCH = "arm64"
go build -ldflags="-s -w" -o "sa_aarch64"
$Env:GOOS = "linux"; $Env:GOARM = "6"; $Env:GOARCH = "arm"
go build -ldflags="-s -w" -o "sa_armhf"
$Env:GOOS = "linux"; $Env:GOARM = "7"; $Env:GOARCH = "arm"
go build -ldflags="-s -w" -o "sa_armv7"
```

### Компиляция

```shell
go build -ldflags "-X main.version="
```

### Тесты

```shell
gdbus introspect --system --dest org.sas.os --object-path /org/sas/os
```

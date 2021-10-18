# TestFilter

## Установка

Скачаем к себе этот пакет для разработки - вместо `add` используем `dev`

Перейти в режим менеджера пакетов `]` и выполнить команду:

```julia
pkg> dev https://github.com/sairus7/TestFilter.jl
```

Пакет установится в окружение по-умолчанию (1.6)

## Запуск примеров:

Открыть в vscode папку `.julia/dev/TestFilter`

Активировать окружение из подпапки examples:

```julia
pkg> activate examples
```

Добавить в это окружение только что скаченный нами пакет (иначе не найдет его по названию):

```julia
dev TestFilter
```

Инстанцировать окружение - докачать все остальные зависимости из файла окружения `examples/Project.toml`:

```julia
pkg> instantiate
```

Запустить скрипт с примерами `examples/filter_ecg.toml`

# Weather App (demo)


## Mock ups
[Figma](https://www.figma.com/file/i0HMApHyNmWIXojlQDak8v/Weather-App?type=design&node-id=0%3A1&t=f7LaZbs3eOWs5gTS-1)

## Flutter version

FVM is used to manage the Flutter version. See `.fvm/fvm_config.json` to known to Flutter version currently used.

## Application structure
```
lib
    - core
    - data
        - open_meteo
    - entities
    - extensions
    - modules
        - home
        - settings
    - repositories
    - resources
    - services
```

## Env
Environment variables are injected in the app through the `dart-define` build/run arguments.

| Argument | Example |
|---|---|
| SENTRY_ENABLED | false |
| SENTRY_ENSENTRY_URLABLED | false |
| MOCKING | false |
| OPEN_METEO_BASE_URL | https://api.open-meteo.com |


## Intl

[AI tranlator](TODO) tool is used to translate the application. This tool translate the values of the `resources/l10n/weatherapp.json` file with ChatGTP 3.5. 

```
python3 arb_translator.py /home/ob/Documents/Projets/weather-app/weatherapp/lib/resources/l10n/weatherapp.json --key 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 -o /home/ob/Documents/Projets/weather-app/weatherapp/lib/resources/l10n
```

## Models and DTOs
Models and DTOs are generated with `freezed`.

To generate the generated parts, please use the following command:

```bash
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

## Weather api
[Open Meteo](https://open-meteo.com/) API is used to retrieve all the weather information (current, forecast, ...).

[`retrofit`] is used to generate the HTTP request to this service.

## State management

[`riverpod`]()

## Assets
- [Material Symbols](https://fonts.google.com/icons)
- [Openmoji](https://openmoji.org/library/)

[`spider`]() package is used to generate constant paths from the asset folder.

App icons are registered inside the file `resources\icons.dart`.
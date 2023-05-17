# Weather App (demo)


## Flutter version

FVM is used to manage the Flutter version. See `.fvm/fvm_config.json` to known to Flutter version currently used.

## Application structure
```
lib
    - core
    - data
    - entities
    - extensions
    - modules
        - home
        - settings
    - repositories
    - resources
```

## Intl

[AI tranlator](TODO) tool is used to translate the application. This tool translate the values of the `resources/l10n/weatherapp.json` file with ChatGTP 3.5. 

```
python3 arb_translator.py /home/ob/Documents/Projets/weather-app/weatherapp/lib/resources/l10n/weatherapp.json --key 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 -o /home/ob/Documents/Projets/weather-app/weatherapp/lib/resources/l10n
```
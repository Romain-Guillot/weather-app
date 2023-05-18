# Weather App (demo)


## Design
[Figma](https://www.figma.com/file/i0HMApHyNmWIXojlQDak8v/Weather-App?type=design&node-id=0%3A1&t=f7LaZbs3eOWs5gTS-1)

[Material You]() is being used to develop this app.  
[flex_color_scheme] package has been used to generate the `ThemeData`.

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


## Environment variables
Environment variables are injected in the app through the `dart-define` build/run arguments.

| Argument | Example |
|---|---|
| SENTRY_ENABLED | false |
| SENTRY_ENSENTRY_URLABLED | false |
| MOCKING | false |
| OPEN_METEO_BASE_URL | https://api.open-meteo.com |


## Navigation
`go_router`

## Intl
[AI tranlator](TODO) tool is used to translate the application. This tool translate the values of the `resources/l10n/weatherapp.json` file with ChatGTP 3.5. 

```
python3 arb_translator.py /home/ob/Documents/Projets/weather-app/weatherapp/lib/resources/l10n/weatherapp.json --key XXX -o /home/ob/Documents/Projets/weather-app/weatherapp/lib/resources/l10n
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
- [Meteocons](https://bas.dev/work/meteocons)

[`spider`]() package is used to generate constant paths from the asset folder.

App icons are registered inside the file `resources\icons.dart`.

[`lottie`] package is used to display the animated icons.


## Search history
`isar`

## Testing
No testing yet


## Deployment
[`fastlane`] is used to deploy the app on the Google Play Store through the Google Play Console.

The Dockerfile (`deployment/Dockerfile`) allows to build an ubuntu based image with a complete environment : Flutter, JDK, android headless emulator and of course fastlane.

To test, build and publish the app :

```
cd weather-app-project      # parent directory of the Flutter application
sudo `deployment/client-android.local.sh`
```

This script will launch all the necessary script inside a Docker container to test, build and publish the app.

Note that the Google Play Console json key and the release keys are excluded from the git.
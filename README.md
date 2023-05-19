# Weather App (demo)


## Design
[Figma](https://www.figma.com/file/i0HMApHyNmWIXojlQDak8v/Weather-App?type=design&node-id=0%3A1&t=f7LaZbs3eOWs5gTS-1)

[Material Design 3](https://m3.material.io/) is being used to design this app.  
[flex_color_scheme](https://pub.dev/packages/flex_color_scheme) package has been used to generate the `ThemeData` (especially the color scheme).

## Flutter version
FVM is used to manage the Flutter version. See `.fvm/fvm_config.json` to known the Flutter version currently used.


## Application structure
```
- lib
    - core
    - data
    - extensions
    - models
    - modules
    - repositories
    - resources
    - services
    main.dart
    env.dart
    router.dart
```


## Environment variables
Environment variables are injected in the app through the `dart-define` build/run arguments.

| Argument | Example |
|---|---|
| SENTRY_ENABLED | false |
| SENTRY_URL | false |
| MOCKING | false |
| OPEN_METEO_BASE_URL | https://api.open-meteo.com |

Then, these arguments are available through the `Env` class.


## Navigation
[`go_router`](https://pub.dev/packages/go_router) package is used to handle the application navigation. It uses a declarative routing system with named routes.

## Intl
`AI tranlator` tool is used to translate the application. This tool translate the values of the `resources/l10n/weatherapp.json` file with Open AI API and generate arb files for each supported languages. 

**Usage:**
```
python3 arb_translator.py [...]/weather-app/weatherapp/lib/resources/l10n/weatherapp.json --key XXX -o [...]/weather-app/weatherapp/lib/resources/l10n
```

Supported languages:

* 'es': Spanish
* 'pt': Portuguese
* 'fr': French
* 'de': German
* 'it': Italian
* 'ru': Russian
* 'ja': Japanese
* 'ko': Korean
* 'hi': Hindi
* 'bn': Bengali
* 'id': Indonesian
* 'th': Thai
* 'vi': Vietnamese
* 'zh': Chinese
* 'zh-Hans': Simplified Chinese

The app name is translated to these languages for Android. A resource folder with the string values resource file was created for each language (for example: `res/values-ko/strings.xml` for the Korean application name).

The application name is not yet translated for the other platforms.

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

[`riverpod`](https://riverpod.dev/)


## Assets
- [Material Symbols](https://fonts.google.com/icons)
- [Meteocons](https://bas.dev/work/meteocons)

[`spider`](https://pub.dev/packages/spider) package is used to generate constant paths from the asset folder.

App icons are registered inside the file `resources\icons.dart`.

[`lottie`](https://pub.dev/packages/lottie) package is used to display the animated icons (from the *meteocons* icon library).


## Search history
[`isar`](https://pub.dev/packages/isar) database is used to store and manage the search history entries.

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
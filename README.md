# Flutter 💙 Büyümeye Açık Yapı

[Medium.com'da yazdığım yazıda](https://medium.com/@fkurt97/flutter-b%C3%BCy%C3%BCmeye-a%C3%A7%C4%B1k-proje-yap%C4%B1s%C4%B1-8342f3696696) anlattığım büyümeye açık dosya yapısı örneğini bu projede bulabilirsiniz.

## Proje Yapısı
    ├── main.dart
    └── src
        ├── config
        │   ├── constants
        │   │   ├── app_constants.dart
        │   │   ├── asset_constants.dart
        │   │   └── route_constants.dart
        │   ├── navigation
        │   │   ├── navigation_service.dart
        │   │   └── navigator_route_service.dart
        │   └── theme
        │       ├── app_colors.dart
        │       └── custom_theme.dart
        ├── model
        │   └── user_model.dart
        ├── provider
        │   ├── providers.dart
        │   └── sample_provider.dart
        ├── service
        │   └── sample_service.dart
        ├── ui
        │   ├── home_page.dart
        │   └── shared
        │       └── custom_button.dart
        └── utils
            └── extensions
                └── date_extensions.dart

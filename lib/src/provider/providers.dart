import 'package:folder_structure/src/provider/sample_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

// State management olarak Provider kullaniyorsak Main uygulamamizi MultiProvider ile sarmaliyoruz
// Birden fazla provider olusturdugumuzda main.dart dosyasindaki kodlar buyuyor.
// main.dart dosyasinda kod kalabaligindan kurtulmak icin kendi olusturdugumuz provider dosyasini ayri bir
// klasorde tutuyoruz.

List<SingleChildWidget> providers = [...independentService, ...uiConsumableProviders];

List<SingleChildWidget> independentService = [
  ChangeNotifierProvider<SampleProvider>.value(value: SampleProvider()),
  // ChangeNotifierProvider<SampleProvider>.value(value: SampleProvider()),
  // ChangeNotifierProvider<SampleProvider>.value(value: SampleProvider()),
];

List<SingleChildWidget> uiConsumableProviders = [];

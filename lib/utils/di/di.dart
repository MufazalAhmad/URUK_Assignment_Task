import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:uruk_assignment/utils/di/di.config.dart';

final sl = GetIt.instance;
@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => sl.init();

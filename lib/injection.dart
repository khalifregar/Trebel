import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:trebel/injection.config.dart';

final GetIt getIt = GetIt.instance;
@injectableInit
void configureInjection(String env) {
  getIt.init(environment: env);
}
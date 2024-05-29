import 'package:flutter_bootstrap/repositories/local_data.repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localDataRepositoryProvider = Provider<LocalDataRepository>((_) {
  return LocalDataRepository();
});

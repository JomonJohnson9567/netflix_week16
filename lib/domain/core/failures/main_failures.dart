import 'package:freezed_annotation/freezed_annotation.dart' show freezed;
part 'main_failures.freezed.dart';

@freezed
class MainFailures with _$MainFailures {
  const factory MainFailures.clientFailure() = _MainFailures;

  const factory MainFailures.serverFailure() = _MainFailures;
}

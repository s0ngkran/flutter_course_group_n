import 'package:freezed_annotation/freezed_annotation.dart';

import 'notef.dart';

part 'addressf.freezed.dart';
part 'addressf.g.dart';

@freezed
class Addressf with _$Addressf {
const factory Addressf({
  String? id,
  String? title,
  int? age,
  String? title2,
  bool? isCompleted,
  // Notef? note,
  List<Notef>? notes,
// @JsonKey(name: 'text2')        String? text2,
// @JsonKey(name: 'createdOn') DateTime? createdOn,
}) = _Addressf;
factory Addressf.fromJson(Map<String, Object?> json)
    => _$AddressfFromJson(json);
}
    
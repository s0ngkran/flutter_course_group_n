import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';
import 'company.dart';

part 'juserf.freezed.dart';
part 'juserf.g.dart';

@freezed
class Juserf with _$Juserf {
  const factory Juserf({
    int? id,
    String? name,
    String? username,
    String? email,
    Address? address,
    String? phone,
    String? website,
    Company? company,
// @JsonKey(name: 'text2')        String? text2,
// @JsonKey(name: 'createdOn') DateTime? createdOn,
  }) = _Juserf;
  factory Juserf.fromJson(Map<String, Object?> json) => _$JuserfFromJson(json);
}

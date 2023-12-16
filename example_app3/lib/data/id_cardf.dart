import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_cardf.freezed.dart';
part 'id_cardf.g.dart';

@freezed
class IdCardf with _$IdCardf {
const factory IdCardf({
  String? id,
  String? title,
// @JsonKey(name: 'text2')        String? text2,
// @JsonKey(name: 'createdOn') DateTime? createdOn,
}) = _IdCardf;
factory IdCardf.fromJson(Map<String, Object?> json)
    => _$IdCardfFromJson(json);
}
    
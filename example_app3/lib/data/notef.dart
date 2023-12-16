import 'package:example_app3/data/id_cardf.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notef.freezed.dart';
part 'notef.g.dart';

@freezed
class Notef with _$Notef {
const factory Notef({
  String? id,
  String? title,
  String? title2,
  IdCardf? idCard,
// @JsonKey(name: 'text2')        String? text2,
// @JsonKey(name: 'createdOn') DateTime? createdOn,
}) = _Notef;
factory Notef.fromJson(Map<String, Object?> json)
    => _$NotefFromJson(json);
}
    
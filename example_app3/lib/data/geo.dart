import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo.freezed.dart';
part 'geo.g.dart';

@freezed
class Geo with _$Geo {
  const factory Geo({
    String? lat,
    String? lng,
    // @JsonKey(name: 'text2')        String? text2,
    // @JsonKey(name: 'createdOn') DateTime? createdOn,
  }) = _Geo;
  factory Geo.fromJson(Map<String, Object?> json) => _$GeoFromJson(json);
}

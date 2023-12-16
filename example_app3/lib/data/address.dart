import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    Geo? geo,
// @JsonKey(name: 'text2')        String? text2,
// @JsonKey(name: 'createdOn') DateTime? createdOn,
  }) = _Address;
  factory Address.fromJson(Map<String, Object?> json) => _$AddressFromJson(json);
}

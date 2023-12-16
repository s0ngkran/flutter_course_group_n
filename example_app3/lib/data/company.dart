import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
const factory Company({
String? name,
    String? catchPhrase,
    String? bs,
// @JsonKey(name: 'text2')        String? text2,
// @JsonKey(name: 'createdOn') DateTime? createdOn,
}) = _Company;
factory Company.fromJson(Map<String, Object?> json)
    => _$CompanyFromJson(json);
}
    
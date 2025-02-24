// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaint.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetComplaintCollection on Isar {
  IsarCollection<Complaint> get complaints => this.collection();
}

const ComplaintSchema = CollectionSchema(
  name: r'Complaint',
  id: 7245709997895315280,
  properties: {
    r'address': PropertySchema(
      id: 0,
      name: r'address',
      type: IsarType.string,
    ),
    r'city': PropertySchema(
      id: 1,
      name: r'city',
      type: IsarType.string,
    ),
    r'complaintId': PropertySchema(
      id: 2,
      name: r'complaintId',
      type: IsarType.string,
    ),
    r'complaintTo': PropertySchema(
      id: 3,
      name: r'complaintTo',
      type: IsarType.string,
    ),
    r'governmentType': PropertySchema(
      id: 4,
      name: r'governmentType',
      type: IsarType.string,
    ),
    r'grievance': PropertySchema(
      id: 5,
      name: r'grievance',
      type: IsarType.string,
    ),
    r'image': PropertySchema(
      id: 6,
      name: r'image',
      type: IsarType.string,
    ),
    r'ministry': PropertySchema(
      id: 7,
      name: r'ministry',
      type: IsarType.string,
    ),
    r'pdf': PropertySchema(
      id: 8,
      name: r'pdf',
      type: IsarType.string,
    ),
    r'state': PropertySchema(
      id: 9,
      name: r'state',
      type: IsarType.string,
    ),
    r'video': PropertySchema(
      id: 10,
      name: r'video',
      type: IsarType.string,
    )
  },
  estimateSize: _complaintEstimateSize,
  serialize: _complaintSerialize,
  deserialize: _complaintDeserialize,
  deserializeProp: _complaintDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _complaintGetId,
  getLinks: _complaintGetLinks,
  attach: _complaintAttach,
  version: '3.1.0+1',
);

int _complaintEstimateSize(
  Complaint object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.address.length * 3;
  bytesCount += 3 + object.city.length * 3;
  bytesCount += 3 + object.complaintId.length * 3;
  bytesCount += 3 + object.complaintTo.length * 3;
  bytesCount += 3 + object.governmentType.length * 3;
  bytesCount += 3 + object.grievance.length * 3;
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.ministry.length * 3;
  {
    final value = object.pdf;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.state.length * 3;
  {
    final value = object.video;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _complaintSerialize(
  Complaint object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.address);
  writer.writeString(offsets[1], object.city);
  writer.writeString(offsets[2], object.complaintId);
  writer.writeString(offsets[3], object.complaintTo);
  writer.writeString(offsets[4], object.governmentType);
  writer.writeString(offsets[5], object.grievance);
  writer.writeString(offsets[6], object.image);
  writer.writeString(offsets[7], object.ministry);
  writer.writeString(offsets[8], object.pdf);
  writer.writeString(offsets[9], object.state);
  writer.writeString(offsets[10], object.video);
}

Complaint _complaintDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Complaint();
  object.address = reader.readString(offsets[0]);
  object.city = reader.readString(offsets[1]);
  object.complaintId = reader.readString(offsets[2]);
  object.complaintTo = reader.readString(offsets[3]);
  object.governmentType = reader.readString(offsets[4]);
  object.grievance = reader.readString(offsets[5]);
  object.id = id;
  object.image = reader.readStringOrNull(offsets[6]);
  object.ministry = reader.readString(offsets[7]);
  object.pdf = reader.readStringOrNull(offsets[8]);
  object.state = reader.readString(offsets[9]);
  object.video = reader.readStringOrNull(offsets[10]);
  return object;
}

P _complaintDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _complaintGetId(Complaint object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _complaintGetLinks(Complaint object) {
  return [];
}

void _complaintAttach(IsarCollection<dynamic> col, Id id, Complaint object) {
  object.id = id;
}

extension ComplaintQueryWhereSort
    on QueryBuilder<Complaint, Complaint, QWhere> {
  QueryBuilder<Complaint, Complaint, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ComplaintQueryWhere
    on QueryBuilder<Complaint, Complaint, QWhereClause> {
  QueryBuilder<Complaint, Complaint, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ComplaintQueryFilter
    on QueryBuilder<Complaint, Complaint, QFilterCondition> {
  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> addressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> addressGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> addressLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> addressBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> addressContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> addressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> cityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> cityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> cityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> cityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'city',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> cityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> cityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> cityContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> cityMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'city',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> cityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> cityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> complaintIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'complaintId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      complaintIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'complaintId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> complaintIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'complaintId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> complaintIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'complaintId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      complaintIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'complaintId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> complaintIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'complaintId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> complaintIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'complaintId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> complaintIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'complaintId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      complaintIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'complaintId',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      complaintIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'complaintId',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> complaintToEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'complaintTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      complaintToGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'complaintTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> complaintToLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'complaintTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> complaintToBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'complaintTo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      complaintToStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'complaintTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> complaintToEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'complaintTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> complaintToContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'complaintTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> complaintToMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'complaintTo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      complaintToIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'complaintTo',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      complaintToIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'complaintTo',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      governmentTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'governmentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      governmentTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'governmentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      governmentTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'governmentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      governmentTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'governmentType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      governmentTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'governmentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      governmentTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'governmentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      governmentTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'governmentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      governmentTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'governmentType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      governmentTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'governmentType',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      governmentTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'governmentType',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> grievanceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grievance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      grievanceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grievance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> grievanceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grievance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> grievanceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grievance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> grievanceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'grievance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> grievanceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'grievance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> grievanceContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'grievance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> grievanceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'grievance',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> grievanceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grievance',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      grievanceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'grievance',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> imageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> imageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> ministryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ministry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> ministryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ministry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> ministryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ministry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> ministryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ministry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> ministryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ministry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> ministryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ministry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> ministryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ministry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> ministryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ministry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> ministryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ministry',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition>
      ministryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ministry',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> pdfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pdf',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> pdfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pdf',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> pdfEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pdf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> pdfGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pdf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> pdfLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pdf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> pdfBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pdf',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> pdfStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pdf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> pdfEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pdf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> pdfContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pdf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> pdfMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pdf',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> pdfIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pdf',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> pdfIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pdf',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> stateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> stateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> stateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> stateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'state',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> stateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> stateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> stateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> stateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'state',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> stateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> stateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'state',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> videoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'video',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> videoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'video',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> videoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'video',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> videoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'video',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> videoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'video',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> videoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'video',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> videoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'video',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> videoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'video',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> videoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'video',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> videoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'video',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> videoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'video',
        value: '',
      ));
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterFilterCondition> videoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'video',
        value: '',
      ));
    });
  }
}

extension ComplaintQueryObject
    on QueryBuilder<Complaint, Complaint, QFilterCondition> {}

extension ComplaintQueryLinks
    on QueryBuilder<Complaint, Complaint, QFilterCondition> {}

extension ComplaintQuerySortBy on QueryBuilder<Complaint, Complaint, QSortBy> {
  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByComplaintId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complaintId', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByComplaintIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complaintId', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByComplaintTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complaintTo', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByComplaintToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complaintTo', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByGovernmentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'governmentType', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByGovernmentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'governmentType', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByGrievance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grievance', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByGrievanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grievance', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByMinistry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ministry', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByMinistryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ministry', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByPdf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdf', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByPdfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdf', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> sortByVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.desc);
    });
  }
}

extension ComplaintQuerySortThenBy
    on QueryBuilder<Complaint, Complaint, QSortThenBy> {
  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByComplaintId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complaintId', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByComplaintIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complaintId', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByComplaintTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complaintTo', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByComplaintToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complaintTo', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByGovernmentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'governmentType', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByGovernmentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'governmentType', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByGrievance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grievance', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByGrievanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grievance', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByMinistry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ministry', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByMinistryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ministry', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByPdf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdf', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByPdfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdf', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.asc);
    });
  }

  QueryBuilder<Complaint, Complaint, QAfterSortBy> thenByVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.desc);
    });
  }
}

extension ComplaintQueryWhereDistinct
    on QueryBuilder<Complaint, Complaint, QDistinct> {
  QueryBuilder<Complaint, Complaint, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Complaint, Complaint, QDistinct> distinctByCity(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'city', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Complaint, Complaint, QDistinct> distinctByComplaintId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'complaintId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Complaint, Complaint, QDistinct> distinctByComplaintTo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'complaintTo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Complaint, Complaint, QDistinct> distinctByGovernmentType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'governmentType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Complaint, Complaint, QDistinct> distinctByGrievance(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'grievance', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Complaint, Complaint, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Complaint, Complaint, QDistinct> distinctByMinistry(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ministry', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Complaint, Complaint, QDistinct> distinctByPdf(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pdf', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Complaint, Complaint, QDistinct> distinctByState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'state', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Complaint, Complaint, QDistinct> distinctByVideo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'video', caseSensitive: caseSensitive);
    });
  }
}

extension ComplaintQueryProperty
    on QueryBuilder<Complaint, Complaint, QQueryProperty> {
  QueryBuilder<Complaint, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Complaint, String, QQueryOperations> addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<Complaint, String, QQueryOperations> cityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'city');
    });
  }

  QueryBuilder<Complaint, String, QQueryOperations> complaintIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'complaintId');
    });
  }

  QueryBuilder<Complaint, String, QQueryOperations> complaintToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'complaintTo');
    });
  }

  QueryBuilder<Complaint, String, QQueryOperations> governmentTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'governmentType');
    });
  }

  QueryBuilder<Complaint, String, QQueryOperations> grievanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grievance');
    });
  }

  QueryBuilder<Complaint, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<Complaint, String, QQueryOperations> ministryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ministry');
    });
  }

  QueryBuilder<Complaint, String?, QQueryOperations> pdfProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pdf');
    });
  }

  QueryBuilder<Complaint, String, QQueryOperations> stateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'state');
    });
  }

  QueryBuilder<Complaint, String?, QQueryOperations> videoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'video');
    });
  }
}

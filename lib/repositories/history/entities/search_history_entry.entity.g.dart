// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history_entry.entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSearchHistoryEntryEntityCollection on Isar {
  IsarCollection<SearchHistoryEntryEntity> get searchHistoryEntryEntitys =>
      this.collection();
}

const SearchHistoryEntryEntitySchema = CollectionSchema(
  name: r'SearchHistoryEntryEntity',
  id: -6072681503401988403,
  properties: {
    r'lastUsed': PropertySchema(
      id: 0,
      name: r'lastUsed',
      type: IsarType.dateTime,
    ),
    r'lat': PropertySchema(
      id: 1,
      name: r'lat',
      type: IsarType.double,
    ),
    r'lon': PropertySchema(
      id: 2,
      name: r'lon',
      type: IsarType.double,
    ),
    r'placemark': PropertySchema(
      id: 3,
      name: r'placemark',
      type: IsarType.string,
    )
  },
  estimateSize: _searchHistoryEntryEntityEstimateSize,
  serialize: _searchHistoryEntryEntitySerialize,
  deserialize: _searchHistoryEntryEntityDeserialize,
  deserializeProp: _searchHistoryEntryEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'placemark': IndexSchema(
      id: -1917063189827495068,
      name: r'placemark',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'placemark',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _searchHistoryEntryEntityGetId,
  getLinks: _searchHistoryEntryEntityGetLinks,
  attach: _searchHistoryEntryEntityAttach,
  version: '3.1.0+1',
);

int _searchHistoryEntryEntityEstimateSize(
  SearchHistoryEntryEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.placemark;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _searchHistoryEntryEntitySerialize(
  SearchHistoryEntryEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.lastUsed);
  writer.writeDouble(offsets[1], object.lat);
  writer.writeDouble(offsets[2], object.lon);
  writer.writeString(offsets[3], object.placemark);
}

SearchHistoryEntryEntity _searchHistoryEntryEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SearchHistoryEntryEntity();
  object.id = id;
  object.lastUsed = reader.readDateTimeOrNull(offsets[0]);
  object.lat = reader.readDoubleOrNull(offsets[1]);
  object.lon = reader.readDoubleOrNull(offsets[2]);
  object.placemark = reader.readStringOrNull(offsets[3]);
  return object;
}

P _searchHistoryEntryEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _searchHistoryEntryEntityGetId(SearchHistoryEntryEntity object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _searchHistoryEntryEntityGetLinks(
    SearchHistoryEntryEntity object) {
  return [];
}

void _searchHistoryEntryEntityAttach(
    IsarCollection<dynamic> col, Id id, SearchHistoryEntryEntity object) {
  object.id = id;
}

extension SearchHistoryEntryEntityQueryWhereSort on QueryBuilder<
    SearchHistoryEntryEntity, SearchHistoryEntryEntity, QWhere> {
  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SearchHistoryEntryEntityQueryWhere on QueryBuilder<
    SearchHistoryEntryEntity, SearchHistoryEntryEntity, QWhereClause> {
  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterWhereClause> idBetween(
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

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterWhereClause> placemarkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'placemark',
        value: [null],
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterWhereClause> placemarkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'placemark',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterWhereClause> placemarkEqualTo(String? placemark) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'placemark',
        value: [placemark],
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterWhereClause> placemarkNotEqualTo(String? placemark) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'placemark',
              lower: [],
              upper: [placemark],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'placemark',
              lower: [placemark],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'placemark',
              lower: [placemark],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'placemark',
              lower: [],
              upper: [placemark],
              includeUpper: false,
            ));
      }
    });
  }
}

extension SearchHistoryEntryEntityQueryFilter on QueryBuilder<
    SearchHistoryEntryEntity, SearchHistoryEntryEntity, QFilterCondition> {
  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> idGreaterThan(
    Id? value, {
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

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> idLessThan(
    Id? value, {
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

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> lastUsedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastUsed',
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> lastUsedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastUsed',
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> lastUsedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUsed',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> lastUsedGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUsed',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> lastUsedLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUsed',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> lastUsedBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUsed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> latIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lat',
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> latIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lat',
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> latEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lat',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> latGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lat',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> latLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lat',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> latBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> lonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lon',
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> lonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lon',
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> lonEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lon',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> lonGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lon',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> lonLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lon',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> lonBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> placemarkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'placemark',
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> placemarkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'placemark',
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> placemarkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> placemarkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'placemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> placemarkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'placemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> placemarkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'placemark',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> placemarkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'placemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> placemarkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'placemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
          QAfterFilterCondition>
      placemarkContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'placemark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
          QAfterFilterCondition>
      placemarkMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'placemark',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> placemarkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placemark',
        value: '',
      ));
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity,
      QAfterFilterCondition> placemarkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'placemark',
        value: '',
      ));
    });
  }
}

extension SearchHistoryEntryEntityQueryObject on QueryBuilder<
    SearchHistoryEntryEntity, SearchHistoryEntryEntity, QFilterCondition> {}

extension SearchHistoryEntryEntityQueryLinks on QueryBuilder<
    SearchHistoryEntryEntity, SearchHistoryEntryEntity, QFilterCondition> {}

extension SearchHistoryEntryEntityQuerySortBy on QueryBuilder<
    SearchHistoryEntryEntity, SearchHistoryEntryEntity, QSortBy> {
  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      sortByLastUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUsed', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      sortByLastUsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUsed', Sort.desc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      sortByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      sortByLatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.desc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      sortByLon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lon', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      sortByLonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lon', Sort.desc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      sortByPlacemark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placemark', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      sortByPlacemarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placemark', Sort.desc);
    });
  }
}

extension SearchHistoryEntryEntityQuerySortThenBy on QueryBuilder<
    SearchHistoryEntryEntity, SearchHistoryEntryEntity, QSortThenBy> {
  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      thenByLastUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUsed', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      thenByLastUsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUsed', Sort.desc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      thenByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      thenByLatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.desc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      thenByLon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lon', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      thenByLonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lon', Sort.desc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      thenByPlacemark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placemark', Sort.asc);
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QAfterSortBy>
      thenByPlacemarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placemark', Sort.desc);
    });
  }
}

extension SearchHistoryEntryEntityQueryWhereDistinct on QueryBuilder<
    SearchHistoryEntryEntity, SearchHistoryEntryEntity, QDistinct> {
  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QDistinct>
      distinctByLastUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUsed');
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QDistinct>
      distinctByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lat');
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QDistinct>
      distinctByLon() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lon');
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, SearchHistoryEntryEntity, QDistinct>
      distinctByPlacemark({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placemark', caseSensitive: caseSensitive);
    });
  }
}

extension SearchHistoryEntryEntityQueryProperty on QueryBuilder<
    SearchHistoryEntryEntity, SearchHistoryEntryEntity, QQueryProperty> {
  QueryBuilder<SearchHistoryEntryEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, DateTime?, QQueryOperations>
      lastUsedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUsed');
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, double?, QQueryOperations>
      latProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lat');
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, double?, QQueryOperations>
      lonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lon');
    });
  }

  QueryBuilder<SearchHistoryEntryEntity, String?, QQueryOperations>
      placemarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placemark');
    });
  }
}

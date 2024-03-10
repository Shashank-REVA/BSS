import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomsRecord extends FirestoreRecord {
  RoomsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "room_type" field.
  String? _roomType;
  String get roomType => _roomType ?? '';
  bool hasRoomType() => _roomType != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "no" field.
  int? _no;
  int get no => _no ?? 0;
  bool hasNo() => _no != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _roomType = snapshotData['room_type'] as String?;
    _city = snapshotData['city'] as String?;
    _no = castToType<int>(snapshotData['no']);
    _price = castToType<int>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rooms');

  static Stream<RoomsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomsRecord.fromSnapshot(s));

  static Future<RoomsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomsRecord.fromSnapshot(s));

  static RoomsRecord fromSnapshot(DocumentSnapshot snapshot) => RoomsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomsRecordData({
  String? roomType,
  String? city,
  int? no,
  int? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'room_type': roomType,
      'city': city,
      'no': no,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomsRecordDocumentEquality implements Equality<RoomsRecord> {
  const RoomsRecordDocumentEquality();

  @override
  bool equals(RoomsRecord? e1, RoomsRecord? e2) {
    return e1?.roomType == e2?.roomType &&
        e1?.city == e2?.city &&
        e1?.no == e2?.no &&
        e1?.price == e2?.price;
  }

  @override
  int hash(RoomsRecord? e) =>
      const ListEquality().hash([e?.roomType, e?.city, e?.no, e?.price]);

  @override
  bool isValidKey(Object? o) => o is RoomsRecord;
}

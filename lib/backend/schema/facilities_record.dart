import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FacilitiesRecord extends FirestoreRecord {
  FacilitiesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "guest_name" field.
  String? _guestName;
  String get guestName => _guestName ?? '';
  bool hasGuestName() => _guestName != null;

  // "guest_facility" field.
  String? _guestFacility;
  String get guestFacility => _guestFacility ?? '';
  bool hasGuestFacility() => _guestFacility != null;

  // "guest_number" field.
  String? _guestNumber;
  String get guestNumber => _guestNumber ?? '';
  bool hasGuestNumber() => _guestNumber != null;

  // "facility_date" field.
  String? _facilityDate;
  String get facilityDate => _facilityDate ?? '';
  bool hasFacilityDate() => _facilityDate != null;

  // "facility_city" field.
  String? _facilityCity;
  String get facilityCity => _facilityCity ?? '';
  bool hasFacilityCity() => _facilityCity != null;

  void _initializeFields() {
    _guestName = snapshotData['guest_name'] as String?;
    _guestFacility = snapshotData['guest_facility'] as String?;
    _guestNumber = snapshotData['guest_number'] as String?;
    _facilityDate = snapshotData['facility_date'] as String?;
    _facilityCity = snapshotData['facility_city'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('facilities');

  static Stream<FacilitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FacilitiesRecord.fromSnapshot(s));

  static Future<FacilitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FacilitiesRecord.fromSnapshot(s));

  static FacilitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FacilitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FacilitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FacilitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FacilitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FacilitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFacilitiesRecordData({
  String? guestName,
  String? guestFacility,
  String? guestNumber,
  String? facilityDate,
  String? facilityCity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'guest_name': guestName,
      'guest_facility': guestFacility,
      'guest_number': guestNumber,
      'facility_date': facilityDate,
      'facility_city': facilityCity,
    }.withoutNulls,
  );

  return firestoreData;
}

class FacilitiesRecordDocumentEquality implements Equality<FacilitiesRecord> {
  const FacilitiesRecordDocumentEquality();

  @override
  bool equals(FacilitiesRecord? e1, FacilitiesRecord? e2) {
    return e1?.guestName == e2?.guestName &&
        e1?.guestFacility == e2?.guestFacility &&
        e1?.guestNumber == e2?.guestNumber &&
        e1?.facilityDate == e2?.facilityDate &&
        e1?.facilityCity == e2?.facilityCity;
  }

  @override
  int hash(FacilitiesRecord? e) => const ListEquality().hash([
        e?.guestName,
        e?.guestFacility,
        e?.guestNumber,
        e?.facilityDate,
        e?.facilityCity
      ]);

  @override
  bool isValidKey(Object? o) => o is FacilitiesRecord;
}

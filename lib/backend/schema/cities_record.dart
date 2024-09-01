import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitiesRecord extends FirestoreRecord {
  CitiesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "phone_num" field.
  int? _phoneNum;
  int get phoneNum => _phoneNum ?? 0;
  bool hasPhoneNum() => _phoneNum != null;

  // "img1" field.
  String? _img1;
  String get img1 => _img1 ?? '';
  bool hasImg1() => _img1 != null;

  // "blur_img" field.
  String? _blurImg;
  String get blurImg => _blurImg ?? '';
  bool hasBlurImg() => _blurImg != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "facility_name" field.
  String? _facilityName;
  String get facilityName => _facilityName ?? '';
  bool hasFacilityName() => _facilityName != null;

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
    _name = snapshotData['name'] as String?;
    _location = snapshotData['location'] as String?;
    _image = snapshotData['image'] as String?;
    _index = castToType<int>(snapshotData['index']);
    _about = snapshotData['about'] as String?;
    _state = snapshotData['state'] as String?;
    _phoneNum = castToType<int>(snapshotData['phone_num']);
    _img1 = snapshotData['img1'] as String?;
    _blurImg = snapshotData['blur_img'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _facilityName = snapshotData['facility_name'] as String?;
    _guestName = snapshotData['guest_name'] as String?;
    _guestFacility = snapshotData['guest_facility'] as String?;
    _guestNumber = snapshotData['guest_number'] as String?;
    _facilityDate = snapshotData['facility_date'] as String?;
    _facilityCity = snapshotData['facility_city'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cities');

  static Stream<CitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitiesRecord.fromSnapshot(s));

  static Future<CitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitiesRecord.fromSnapshot(s));

  static CitiesRecord fromSnapshot(DocumentSnapshot snapshot) => CitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitiesRecordData({
  String? name,
  String? location,
  String? image,
  int? index,
  String? about,
  String? state,
  int? phoneNum,
  String? img1,
  String? blurImg,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? facilityName,
  String? guestName,
  String? guestFacility,
  String? guestNumber,
  String? facilityDate,
  String? facilityCity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'location': location,
      'image': image,
      'index': index,
      'about': about,
      'state': state,
      'phone_num': phoneNum,
      'img1': img1,
      'blur_img': blurImg,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'facility_name': facilityName,
      'guest_name': guestName,
      'guest_facility': guestFacility,
      'guest_number': guestNumber,
      'facility_date': facilityDate,
      'facility_city': facilityCity,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitiesRecordDocumentEquality implements Equality<CitiesRecord> {
  const CitiesRecordDocumentEquality();

  @override
  bool equals(CitiesRecord? e1, CitiesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.location == e2?.location &&
        e1?.image == e2?.image &&
        e1?.index == e2?.index &&
        e1?.about == e2?.about &&
        e1?.state == e2?.state &&
        e1?.phoneNum == e2?.phoneNum &&
        e1?.img1 == e2?.img1 &&
        e1?.blurImg == e2?.blurImg &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.facilityName == e2?.facilityName &&
        e1?.guestName == e2?.guestName &&
        e1?.guestFacility == e2?.guestFacility &&
        e1?.guestNumber == e2?.guestNumber &&
        e1?.facilityDate == e2?.facilityDate &&
        e1?.facilityCity == e2?.facilityCity;
  }

  @override
  int hash(CitiesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.location,
        e?.image,
        e?.index,
        e?.about,
        e?.state,
        e?.phoneNum,
        e?.img1,
        e?.blurImg,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.facilityName,
        e?.guestName,
        e?.guestFacility,
        e?.guestNumber,
        e?.facilityDate,
        e?.facilityCity
      ]);

  @override
  bool isValidKey(Object? o) => o is CitiesRecord;
}

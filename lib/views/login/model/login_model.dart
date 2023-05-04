
// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  int status;
  bool success;
  String requestDate;
  String token;
  String msg;
  String userType;
  UserData userData;
  bool haveProducts;

  LoginModel({
    required this.status,
    required this.success,
    required this.requestDate,
    required this.token,
    required this.msg,
    required this.userType,
    required this.userData,
    required this.haveProducts,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    status: json["status"],
    success: json["success"],
    requestDate: json["request_date"],
    token: json["token"],
    msg: json["msg"],
    userType: json["user_type"],
    userData: UserData.fromJson(json["user_data"]),
    haveProducts: json["have_products"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "success": success,
    "request_date": requestDate,
    "token": token,
    "msg": msg,
    "user_type": userType,
    "user_data": userData.toJson(),
    "have_products": haveProducts,
  };
}

class UserData {
  int id;
  String name;
  String userName;
  String email;
  dynamic emailVerifiedAt;
  String phone;
  dynamic providerId;
  dynamic provider;
  String countryCode;
  String addressEn;
  String addressAr;
  String latitude;
  String longitude;
  String userType;
  dynamic profilePhotoUrl;
  String status;
  String storeType;
  String storeNameEn;
  String storeNameAr;
  dynamic phoneTwo;
  dynamic fax;
  dynamic website;
  dynamic workHours;
  String storeWorkStatus;
  dynamic aboutStoreEn;
  dynamic aboutStoreAr;
  String storeDescriptionEn;
  String storeDescriptionAr;
  String storeServiceEn;
  String storeServiceAr;
  String storeStatus;
  dynamic storeLocation;
  String storeCity;
  String storeRegion;
  String storeStreet;
  String buildingName;
  int buildingNumber;
  int mailbox;
  int postalCode;
  String showInHomePage;
  String freeDeliveryStatus;
  dynamic authenticatedStatus;
  String storeReview;
  dynamic storeId;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;

  UserData({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    this.emailVerifiedAt,
    required this.phone,
    this.providerId,
    this.provider,
    required this.countryCode,
    required this.addressEn,
    required this.addressAr,
    required this.latitude,
    required this.longitude,
    required this.userType,
    this.profilePhotoUrl,
    required this.status,
    required this.storeType,
    required this.storeNameEn,
    required this.storeNameAr,
    this.phoneTwo,
    this.fax,
    this.website,
    this.workHours,
    required this.storeWorkStatus,
    this.aboutStoreEn,
    this.aboutStoreAr,
    required this.storeDescriptionEn,
    required this.storeDescriptionAr,
    required this.storeServiceEn,
    required this.storeServiceAr,
    required this.storeStatus,
    this.storeLocation,
    required this.storeCity,
    required this.storeRegion,
    required this.storeStreet,
    required this.buildingName,
    required this.buildingNumber,
    required this.mailbox,
    required this.postalCode,
    required this.showInHomePage,
    required this.freeDeliveryStatus,
    this.authenticatedStatus,
    required this.storeReview,
    this.storeId,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
    id: json["id"],
    name: json["name"],
    userName: json["user_name"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    phone: json["phone"],
    providerId: json["provider_id"],
    provider: json["provider"],
    countryCode: json["country_code"],
    addressEn: json["address_en"],
    addressAr: json["address_ar"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    userType: json["user_type"],
    profilePhotoUrl: json["profile_photo_url"],
    status: json["status"],
    storeType: json["store_type"],
    storeNameEn: json["store_name_en"],
    storeNameAr: json["store_name_ar"],
    phoneTwo: json["phone_two"],
    fax: json["fax"],
    website: json["website"],
    workHours: json["work_hours"],
    storeWorkStatus: json["store_work_status"],
    aboutStoreEn: json["about_store_en"],
    aboutStoreAr: json["about_store_ar"],
    storeDescriptionEn: json["store_description_en"],
    storeDescriptionAr: json["store_description_ar"],
    storeServiceEn: json["store_service_en"],
    storeServiceAr: json["store_service_ar"],
    storeStatus: json["store_status"],
    storeLocation: json["store_location"],
    storeCity: json["store_city"],
    storeRegion: json["store_region"],
    storeStreet: json["store_street"],
    buildingName: json["building_name"],
    buildingNumber: json["building_number"],
    mailbox: json["mailbox"],
    postalCode: json["postal_code"],
    showInHomePage: json["show_in_home_page"],
    freeDeliveryStatus: json["free_delivery_status"],
    authenticatedStatus: json["authenticated_status"],
    storeReview: json["store_review"],
    storeId: json["store_id"],
    deletedAt: json["deleted_at"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "user_name": userName,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "phone": phone,
    "provider_id": providerId,
    "provider": provider,
    "country_code": countryCode,
    "address_en": addressEn,
    "address_ar": addressAr,
    "latitude": latitude,
    "longitude": longitude,
    "user_type": userType,
    "profile_photo_url": profilePhotoUrl,
    "status": status,
    "store_type": storeType,
    "store_name_en": storeNameEn,
    "store_name_ar": storeNameAr,
    "phone_two": phoneTwo,
    "fax": fax,
    "website": website,
    "work_hours": workHours,
    "store_work_status": storeWorkStatus,
    "about_store_en": aboutStoreEn,
    "about_store_ar": aboutStoreAr,
    "store_description_en": storeDescriptionEn,
    "store_description_ar": storeDescriptionAr,
    "store_service_en": storeServiceEn,
    "store_service_ar": storeServiceAr,
    "store_status": storeStatus,
    "store_location": storeLocation,
    "store_city": storeCity,
    "store_region": storeRegion,
    "store_street": storeStreet,
    "building_name": buildingName,
    "building_number": buildingNumber,
    "mailbox": mailbox,
    "postal_code": postalCode,
    "show_in_home_page": showInHomePage,
    "free_delivery_status": freeDeliveryStatus,
    "authenticated_status": authenticatedStatus,
    "store_review": storeReview,
    "store_id": storeId,
    "deleted_at": deletedAt,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

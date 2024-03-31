// To parse this JSON data, do
//
//     final productDetailsModel = productDetailsModelFromJson(jsonString);

import 'dart:convert';

ProductDetailsModel productDetailsModelFromJson(String str) => ProductDetailsModel.fromJson(json.decode(str));

String productDetailsModelToJson(ProductDetailsModel data) => json.encode(data.toJson());

class ProductDetailsModel {
  final int? id;
  final String? addedBy;
  final int? userId;
  final String? name;
  final String? slug;
  final String? productType;
  final List<CategoryId>? categoryIds;
  final int? categoryId;
  final dynamic subCategoryId;
  final dynamic subSubCategoryId;
  final int? brandId;
  final String? unit;
  final int? minQty;
  final int? refundable;
  final dynamic digitalProductType;
  final String? digitalFileReady;
  final List<String>? images;
  final List<dynamic>? colorImage;
  final String? thumbnail;
  final dynamic featured;
  final dynamic flashDeal;
  final String? videoProvider;
  final dynamic videoUrl;
  final List<dynamic>? colors;
  final int? variantProduct;
  final List<dynamic>? attributes;
  final List<dynamic>? choiceOptions;
  final List<dynamic>? variation;
  final int? published;
  final int? unitPrice;
  final int? purchasePrice;
  final int? tax;
  final String? taxType;
  final String? taxModel;
  final int? discount;
  final String? discountType;
  final int? currentStock;
  final int? minimumOrderQty;
  final String? details;
  final int? freeShipping;
  final dynamic attachment;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? status;
  final int? featuredStatus;
  final dynamic metaTitle;
  final dynamic metaDescription;
  final String? metaImage;
  final int? requestStatus;
  final dynamic deniedNote;
  final int? shippingCost;
  final int? multiplyQty;
  final dynamic tempShippingCost;
  final dynamic isShippingCostUpdated;
  final String? code;
  final int? wishListCount;
  final int? reviewsCount;
  final List<dynamic>? colorsFormatted;
  final int? averageReview;
  final dynamic inhouseVacationStartDate;
  final dynamic inhouseVacationEndDate;
  final bool? inhouseTemporaryClose;
  final List<dynamic>? reviews;
  final Seller? seller;
  final List<dynamic>? tags;
  final List<dynamic>? translations;

  ProductDetailsModel({
    this.id,
    this.addedBy,
    this.userId,
    this.name,
    this.slug,
    this.productType,
    this.categoryIds,
    this.categoryId,
    this.subCategoryId,
    this.subSubCategoryId,
    this.brandId,
    this.unit,
    this.minQty,
    this.refundable,
    this.digitalProductType,
    this.digitalFileReady,
    this.images,
    this.colorImage,
    this.thumbnail,
    this.featured,
    this.flashDeal,
    this.videoProvider,
    this.videoUrl,
    this.colors,
    this.variantProduct,
    this.attributes,
    this.choiceOptions,
    this.variation,
    this.published,
    this.unitPrice,
    this.purchasePrice,
    this.tax,
    this.taxType,
    this.taxModel,
    this.discount,
    this.discountType,
    this.currentStock,
    this.minimumOrderQty,
    this.details,
    this.freeShipping,
    this.attachment,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.featuredStatus,
    this.metaTitle,
    this.metaDescription,
    this.metaImage,
    this.requestStatus,
    this.deniedNote,
    this.shippingCost,
    this.multiplyQty,
    this.tempShippingCost,
    this.isShippingCostUpdated,
    this.code,
    this.wishListCount,
    this.reviewsCount,
    this.colorsFormatted,
    this.averageReview,
    this.inhouseVacationStartDate,
    this.inhouseVacationEndDate,
    this.inhouseTemporaryClose,
    this.reviews,
    this.seller,
    this.tags,
    this.translations,
  });

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) => ProductDetailsModel(
    id: json["id"],
    addedBy: json["added_by"],
    userId: json["user_id"],
    name: json["name"],
    slug: json["slug"],
    productType: json["product_type"],
    categoryIds: json["category_ids"] == null ? [] : List<CategoryId>.from(json["category_ids"]!.map((x) => CategoryId.fromJson(x))),
    categoryId: json["category_id"],
    subCategoryId: json["sub_category_id"],
    subSubCategoryId: json["sub_sub_category_id"],
    brandId: json["brand_id"],
    unit: json["unit"],
    minQty: json["min_qty"],
    refundable: json["refundable"],
    digitalProductType: json["digital_product_type"],
    digitalFileReady: json["digital_file_ready"],
    images: json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
    colorImage: json["color_image"] == null ? [] : List<dynamic>.from(json["color_image"]!.map((x) => x)),
    thumbnail: json["thumbnail"],
    featured: json["featured"],
    flashDeal: json["flash_deal"],
    videoProvider: json["video_provider"],
    videoUrl: json["video_url"],
    colors: json["colors"] == null ? [] : List<dynamic>.from(json["colors"]!.map((x) => x)),
    variantProduct: json["variant_product"],
    attributes: json["attributes"] == null ? [] : List<dynamic>.from(json["attributes"]!.map((x) => x)),
    choiceOptions: json["choice_options"] == null ? [] : List<dynamic>.from(json["choice_options"]!.map((x) => x)),
    variation: json["variation"] == null ? [] : List<dynamic>.from(json["variation"]!.map((x) => x)),
    published: json["published"],
    unitPrice: json["unit_price"],
    purchasePrice: json["purchase_price"],
    tax: json["tax"],
    taxType: json["tax_type"],
    taxModel: json["tax_model"],
    discount: json["discount"],
    discountType: json["discount_type"],
    currentStock: json["current_stock"],
    minimumOrderQty: json["minimum_order_qty"],
    details: json["details"],
    freeShipping: json["free_shipping"],
    attachment: json["attachment"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    status: json["status"],
    featuredStatus: json["featured_status"],
    metaTitle: json["meta_title"],
    metaDescription: json["meta_description"],
    metaImage: json["meta_image"],
    requestStatus: json["request_status"],
    deniedNote: json["denied_note"],
    shippingCost: json["shipping_cost"],
    multiplyQty: json["multiply_qty"],
    tempShippingCost: json["temp_shipping_cost"],
    isShippingCostUpdated: json["is_shipping_cost_updated"],
    code: json["code"],
    wishListCount: json["wish_list_count"],
    reviewsCount: json["reviews_count"],
    colorsFormatted: json["colors_formatted"] == null ? [] : List<dynamic>.from(json["colors_formatted"]!.map((x) => x)),
    averageReview: json["average_review"],
    inhouseVacationStartDate: json["inhouse_vacation_start_date"],
    inhouseVacationEndDate: json["inhouse_vacation_end_date"],
    inhouseTemporaryClose: json["inhouse_temporary_close"],
    reviews: json["reviews"] == null ? [] : List<dynamic>.from(json["reviews"]!.map((x) => x)),
    seller: json["seller"] == null ? null : Seller.fromJson(json["seller"]),
    tags: json["tags"] == null ? [] : List<dynamic>.from(json["tags"]!.map((x) => x)),
    translations: json["translations"] == null ? [] : List<dynamic>.from(json["translations"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "added_by": addedBy,
    "user_id": userId,
    "name": name,
    "slug": slug,
    "product_type": productType,
    "category_ids": categoryIds == null ? [] : List<dynamic>.from(categoryIds!.map((x) => x.toJson())),
    "category_id": categoryId,
    "sub_category_id": subCategoryId,
    "sub_sub_category_id": subSubCategoryId,
    "brand_id": brandId,
    "unit": unit,
    "min_qty": minQty,
    "refundable": refundable,
    "digital_product_type": digitalProductType,
    "digital_file_ready": digitalFileReady,
    "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
    "color_image": colorImage == null ? [] : List<dynamic>.from(colorImage!.map((x) => x)),
    "thumbnail": thumbnail,
    "featured": featured,
    "flash_deal": flashDeal,
    "video_provider": videoProvider,
    "video_url": videoUrl,
    "colors": colors == null ? [] : List<dynamic>.from(colors!.map((x) => x)),
    "variant_product": variantProduct,
    "attributes": attributes == null ? [] : List<dynamic>.from(attributes!.map((x) => x)),
    "choice_options": choiceOptions == null ? [] : List<dynamic>.from(choiceOptions!.map((x) => x)),
    "variation": variation == null ? [] : List<dynamic>.from(variation!.map((x) => x)),
    "published": published,
    "unit_price": unitPrice,
    "purchase_price": purchasePrice,
    "tax": tax,
    "tax_type": taxType,
    "tax_model": taxModel,
    "discount": discount,
    "discount_type": discountType,
    "current_stock": currentStock,
    "minimum_order_qty": minimumOrderQty,
    "details": details,
    "free_shipping": freeShipping,
    "attachment": attachment,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "status": status,
    "featured_status": featuredStatus,
    "meta_title": metaTitle,
    "meta_description": metaDescription,
    "meta_image": metaImage,
    "request_status": requestStatus,
    "denied_note": deniedNote,
    "shipping_cost": shippingCost,
    "multiply_qty": multiplyQty,
    "temp_shipping_cost": tempShippingCost,
    "is_shipping_cost_updated": isShippingCostUpdated,
    "code": code,
    "wish_list_count": wishListCount,
    "reviews_count": reviewsCount,
    "colors_formatted": colorsFormatted == null ? [] : List<dynamic>.from(colorsFormatted!.map((x) => x)),
    "average_review": averageReview,
    "inhouse_vacation_start_date": inhouseVacationStartDate,
    "inhouse_vacation_end_date": inhouseVacationEndDate,
    "inhouse_temporary_close": inhouseTemporaryClose,
    "reviews": reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => x)),
    "seller": seller?.toJson(),
    "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
    "translations": translations == null ? [] : List<dynamic>.from(translations!.map((x) => x)),
  };
}

class CategoryId {
  final String? id;
  final int? position;

  CategoryId({
    this.id,
    this.position,
  });

  factory CategoryId.fromJson(Map<String, dynamic> json) => CategoryId(
    id: json["id"],
    position: json["position"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "position": position,
  };
}

class Seller {
  final int? id;
  final String? fName;
  final String? lName;
  final String? phone;
  final String? image;
  final String? email;
  final String? password;
  final String? status;
  final String? rememberToken;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic bankName;
  final dynamic branch;
  final dynamic accountNo;
  final dynamic holderName;
  final dynamic authToken;
  final dynamic salesCommissionPercentage;
  final dynamic gst;
  final dynamic cmFirebaseToken;
  final int? posStatus;
  final int? minimumOrderAmount;
  final int? freeDeliveryStatus;
  final int? freeDeliveryOverAmount;
  final String? appLanguage;
  final Shop? shop;

  Seller({
    this.id,
    this.fName,
    this.lName,
    this.phone,
    this.image,
    this.email,
    this.password,
    this.status,
    this.rememberToken,
    this.createdAt,
    this.updatedAt,
    this.bankName,
    this.branch,
    this.accountNo,
    this.holderName,
    this.authToken,
    this.salesCommissionPercentage,
    this.gst,
    this.cmFirebaseToken,
    this.posStatus,
    this.minimumOrderAmount,
    this.freeDeliveryStatus,
    this.freeDeliveryOverAmount,
    this.appLanguage,
    this.shop,
  });

  factory Seller.fromJson(Map<String, dynamic> json) => Seller(
    id: json["id"],
    fName: json["f_name"],
    lName: json["l_name"],
    phone: json["phone"],
    image: json["image"],
    email: json["email"],
    password: json["password"],
    status: json["status"],
    rememberToken: json["remember_token"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    bankName: json["bank_name"],
    branch: json["branch"],
    accountNo: json["account_no"],
    holderName: json["holder_name"],
    authToken: json["auth_token"],
    salesCommissionPercentage: json["sales_commission_percentage"],
    gst: json["gst"],
    cmFirebaseToken: json["cm_firebase_token"],
    posStatus: json["pos_status"],
    minimumOrderAmount: json["minimum_order_amount"],
    freeDeliveryStatus: json["free_delivery_status"],
    freeDeliveryOverAmount: json["free_delivery_over_amount"],
    appLanguage: json["app_language"],
    shop: json["shop"] == null ? null : Shop.fromJson(json["shop"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "f_name": fName,
    "l_name": lName,
    "phone": phone,
    "image": image,
    "email": email,
    "password": password,
    "status": status,
    "remember_token": rememberToken,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "bank_name": bankName,
    "branch": branch,
    "account_no": accountNo,
    "holder_name": holderName,
    "auth_token": authToken,
    "sales_commission_percentage": salesCommissionPercentage,
    "gst": gst,
    "cm_firebase_token": cmFirebaseToken,
    "pos_status": posStatus,
    "minimum_order_amount": minimumOrderAmount,
    "free_delivery_status": freeDeliveryStatus,
    "free_delivery_over_amount": freeDeliveryOverAmount,
    "app_language": appLanguage,
    "shop": shop?.toJson(),
  };
}

class Shop {
  final int? id;
  final int? sellerId;
  final String? name;
  final String? address;
  final String? contact;
  final String? image;
  final String? bottomBanner;
  final dynamic offerBanner;
  final dynamic vacationStartDate;
  final dynamic vacationEndDate;
  final dynamic vacationNote;
  final bool? vacationStatus;
  final bool? temporaryClose;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? banner;

  Shop({
    this.id,
    this.sellerId,
    this.name,
    this.address,
    this.contact,
    this.image,
    this.bottomBanner,
    this.offerBanner,
    this.vacationStartDate,
    this.vacationEndDate,
    this.vacationNote,
    this.vacationStatus,
    this.temporaryClose,
    this.createdAt,
    this.updatedAt,
    this.banner,
  });

  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
    id: json["id"],
    sellerId: json["seller_id"],
    name: json["name"],
    address: json["address"],
    contact: json["contact"],
    image: json["image"],
    bottomBanner: json["bottom_banner"],
    offerBanner: json["offer_banner"],
    vacationStartDate: json["vacation_start_date"],
    vacationEndDate: json["vacation_end_date"],
    vacationNote: json["vacation_note"],
    vacationStatus: json["vacation_status"],
    temporaryClose: json["temporary_close"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    banner: json["banner"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "seller_id": sellerId,
    "name": name,
    "address": address,
    "contact": contact,
    "image": image,
    "bottom_banner": bottomBanner,
    "offer_banner": offerBanner,
    "vacation_start_date": vacationStartDate,
    "vacation_end_date": vacationEndDate,
    "vacation_note": vacationNote,
    "vacation_status": vacationStatus,
    "temporary_close": temporaryClose,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "banner": banner,
  };
}

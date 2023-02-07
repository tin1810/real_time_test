class Order {
  String? id;
  String? transactionId;
  String? transactionRef;
  String? vendorId;
  String? customerId;
  String? customerAddressId;
  String? transactionCouponCode;
  String? transactionPaymentMethodName;
  int? isCoupon;
  int? status;
  String? statusByText;
  String? totalDiscountAmount;
  String? deliveryId;
  String? deliveryAmount;
  String? taxAmount;
  String? subTotal;
  String? grandTotal;
  String? createdAt;
  String? commissionPercent;
  int? commissionFee;
  int? totalReceivableAmount;
  List<OrderItems>? orderItems;

  Order(
      {this.id,
      this.transactionId,
      this.transactionRef,
      this.vendorId,
      this.customerId,
      this.customerAddressId,
      this.transactionCouponCode,
      this.transactionPaymentMethodName,
      this.isCoupon,
      this.status,
      this.statusByText,
      this.totalDiscountAmount,
      this.deliveryId,
      this.deliveryAmount,
      this.taxAmount,
      this.subTotal,
      this.grandTotal,
      this.createdAt,
      this.commissionPercent,
      this.commissionFee,
      this.totalReceivableAmount,
      this.orderItems});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    transactionId = json['transaction_id'];
    transactionRef = json['transaction_ref'];
    vendorId = json['vendor_id'];
    customerId = json['customer_id'];
    customerAddressId = json['customer_address_id'];
    transactionCouponCode = json['transaction_coupon_code'];
    transactionPaymentMethodName = json['transaction_payment_method_name'];
    isCoupon = json['is_coupon'];
    status = json['status'];
    statusByText = json['status_by_text'];
    totalDiscountAmount = json['total_discount_amount'];
    deliveryId = json['delivery_id'];
    deliveryAmount = json['delivery_amount'];
    taxAmount = json['tax_amount'];
    subTotal = json['sub_total'];
    grandTotal = json['grand_total'];
    createdAt = json['created_at'];
    commissionPercent = json['commission_percent'];
    commissionFee = json['commission_fee'];
    totalReceivableAmount = json['total_receivable_amount'];
    if (json['order_items'] != null) {
      orderItems = <OrderItems>[];
      json['order_items'].forEach((v) {
        orderItems!.add(new OrderItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['transaction_id'] = this.transactionId;
    data['transaction_ref'] = this.transactionRef;
    data['vendor_id'] = this.vendorId;
    data['customer_id'] = this.customerId;
    data['customer_address_id'] = this.customerAddressId;
    data['transaction_coupon_code'] = this.transactionCouponCode;
    data['transaction_payment_method_name'] = this.transactionPaymentMethodName;
    data['is_coupon'] = this.isCoupon;
    data['status'] = this.status;
    data['status_by_text'] = this.statusByText;
    data['total_discount_amount'] = this.totalDiscountAmount;
    data['delivery_id'] = this.deliveryId;
    data['delivery_amount'] = this.deliveryAmount;
    data['tax_amount'] = this.taxAmount;
    data['sub_total'] = this.subTotal;
    data['grand_total'] = this.grandTotal;
    data['created_at'] = this.createdAt;
    data['commission_percent'] = this.commissionPercent;
    data['commission_fee'] = this.commissionFee;
    data['total_receivable_amount'] = this.totalReceivableAmount;
    if (this.orderItems != null) {
      data['order_items'] = this.orderItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OrderItems {
  String? id;
  String? itemId;
  int? qty;
  String? price;
  String? total;
  int? isPromotion;
  String? discountAmount;
  String? description;
  String? itemName;
  String? itemMmName;
  String? itemSku;
  String? itemBarcode;
  String? itemWeight;
  String? itemWeightByKg;
  String? itemItemType;
  String? itemUnitType;
  List<Images>? images;

  OrderItems(
      {this.id,
      this.itemId,
      this.qty,
      this.price,
      this.total,
      this.isPromotion,
      this.discountAmount,
      this.description,
      this.itemName,
      this.itemMmName,
      this.itemSku,
      this.itemBarcode,
      this.itemWeight,
      this.itemWeightByKg,
      this.itemItemType,
      this.itemUnitType,
      this.images});

  OrderItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    itemId = json['item_id'];
    qty = json['qty'];
    price = json['price'];
    total = json['total'];
    isPromotion = json['is_promotion'];
    discountAmount = json['discount_amount'];
    description = json['description'];
    itemName = json['item_name'];
    itemMmName = json['item_mm_name'];
    itemSku = json['item_sku'];
    itemBarcode = json['item_barcode'];
    itemWeight = json['item_weight'];
    itemWeightByKg = json['item_weight_by_kg'];
    itemItemType = json['item_item_type'];
    itemUnitType = json['item_unit_type'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['item_id'] = this.itemId;
    data['qty'] = this.qty;
    data['price'] = this.price;
    data['total'] = this.total;
    data['is_promotion'] = this.isPromotion;
    data['discount_amount'] = this.discountAmount;
    data['description'] = this.description;
    data['item_name'] = this.itemName;
    data['item_mm_name'] = this.itemMmName;
    data['item_sku'] = this.itemSku;
    data['item_barcode'] = this.itemBarcode;
    data['item_weight'] = this.itemWeight;
    data['item_weight_by_kg'] = this.itemWeightByKg;
    data['item_item_type'] = this.itemItemType;
    data['item_unit_type'] = this.itemUnitType;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Images {
  String? id;
  String? resourceableType;
  String? resourceableId;
  String? imageUrl;
  int? isDefault;

  Images(
      {this.id,
      this.resourceableType,
      this.resourceableId,
      this.imageUrl,
      this.isDefault});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resourceableType = json['resourceable_type'];
    resourceableId = json['resourceable_id'];
    imageUrl = json['image_url'];
    isDefault = json['is_default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['resourceable_type'] = this.resourceableType;
    data['resourceable_id'] = this.resourceableId;
    data['image_url'] = this.imageUrl;
    data['is_default'] = this.isDefault;
    return data;
  }
}

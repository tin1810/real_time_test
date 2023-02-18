class RealTimeOrder {
  String? customerAddress;
  String? customerId;
  String? customerName;
  String? deliveryId;
  String? deliveryName;
  String? orderCompleteDate;
  String? orderCreateDate;
  RealTimeOrderDetail? orderDetail;
  String? transactionRef;
  int? transactionStatus;
  String? transactionStatusByText;
  List<String>? vendorIdLists;

  RealTimeOrder(
      {this.customerAddress,
      this.customerId,
      this.customerName,
      this.deliveryId,
      this.deliveryName,
      this.orderCompleteDate,
      this.orderCreateDate,
      this.orderDetail,
      this.transactionRef,
      this.transactionStatus,
      this.transactionStatusByText,
      this.vendorIdLists});

  RealTimeOrder.fromJson(Map<String, dynamic> json) {
    customerAddress = json['customer_address'] as String;
    customerId = json['customer_id'] as String;
    customerName = json['customer_name'] as String;
    deliveryId = json['delivery_id'] as String;
    deliveryName = json['delivery_name'] as String;
    orderCompleteDate = json['order_complete_date'] as String;
    orderCreateDate = json['order_create_date'] as String;

    orderDetail = json['order_detail'] != null
        ? new RealTimeOrderDetail.fromJson(
            Map<String, dynamic>.from(json['order_detail']))
        : null;

    transactionRef = json['transaction_ref'] as String;
    transactionStatus = json['transaction_status'] as int;
    transactionStatusByText = json['transaction_status_by_text'] as String;
    vendorIdLists = json['vendor_id_lists'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_address'] = this.customerAddress;
    data['customer_id'] = this.customerId;
    data['customer_name'] = this.customerName;
    data['delivery_id'] = this.deliveryId;
    data['delivery_name'] = this.deliveryName;
    data['order_complete_date'] = this.orderCompleteDate;
    data['order_create_date'] = this.orderCreateDate;

    if (this.orderDetail != null) {
      data['order_detail'] = this.orderDetail!.toJson();
    }

    data['transaction_ref'] = this.transactionRef;
    data['transaction_status'] = this.transactionStatus;
    data['transaction_status_by_text'] = this.transactionStatusByText;
    data['vendor_id_lists'] = this.vendorIdLists;
    return data;
  }
}

class RealTimeOrderDetail {
  List<OrderState>? orderState;
  int? status;
  String? statusByText;
  String? vendorAddress;
  String? vendorId;
  String? vendorName;

  RealTimeOrderDetail(
      {this.orderState,
      this.status,
      this.statusByText,
      this.vendorAddress,
      this.vendorId,
      this.vendorName});

  RealTimeOrderDetail.fromJson(Map<String, dynamic> json) {
    if (json['order_state'] != null) {
      orderState = <OrderState>[];
      json['order_state'].forEach((v) {
        orderState!.add(new OrderState.fromJson(v));
      });
    }
    status = json['status'];
    statusByText = json['status_by_text'];
    vendorAddress = json['vendor_address'];
    vendorId = json['vendor_id'];
    vendorName = json['vendor_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.orderState != null) {
      data['order_state'] = this.orderState!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['status_by_text'] = this.statusByText;
    data['vendor_address'] = this.vendorAddress;
    data['vendor_id'] = this.vendorId;
    data['vendor_name'] = this.vendorName;
    return data;
  }
}

class OrderState {
  String? datetime;
  String? status;

  OrderState({this.datetime, this.status});

  OrderState.fromJson(Map<String, dynamic> json) {
    datetime = json['datetime'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['datetime'] = this.datetime;
    data['status'] = this.status;
    return data;
  }
}

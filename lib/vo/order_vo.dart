class Order {
  String? customerAddress;
  String? customerId;
  String? customerName;
  String? driverId;
  String? driverName;
  String? id;
  String? orderApproveDate;
  String? orderCompleteDate;
  String? orderCreateDate;
  String? orderDate;
  String? orderOnWayDate;
  String? orderPickUpDate;
  int? status;
  String? statusByText;
  String? transactionRef;
  String? vendorAddress;
  String? vendorId;
  String? vendorName;

  Order(
      {this.customerAddress,
      this.customerId,
      this.customerName,
      this.driverId,
      this.driverName,
      this.id,
      this.orderApproveDate,
      this.orderCompleteDate,
      this.orderCreateDate,
      this.orderDate,
      this.orderOnWayDate,
      this.orderPickUpDate,
      this.status,
      this.statusByText,
      this.transactionRef,
      this.vendorAddress,
      this.vendorId,
      this.vendorName});

  Order.fromJson(Map<String, dynamic> json) {
    customerAddress = json['customer_address'];
    customerId = json['customer_id'];
    customerName = json['customer_name'];
    driverId = json['driver_id'];
    driverName = json['driver_name'];
    id = json['id'];
    orderApproveDate = json['order_approve_date'];
    orderCompleteDate = json['order_complete_date'];
    orderCreateDate = json['order_create_date'];
    orderDate = json['order_date'];
    orderOnWayDate = json['order_on_way_date'];
    orderPickUpDate = json['order_pick_up_date'];
    status = json['status'];
    statusByText = json['status_by_text'];
    transactionRef = json['transaction_ref'];
    vendorAddress = json['vendor_address'];
    vendorId = json['vendor_id'];
    vendorName = json['vendor_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_address'] = this.customerAddress;
    data['customer_id'] = this.customerId;
    data['customer_name'] = this.customerName;
    data['driver_id'] = this.driverId;
    data['driver_name'] = this.driverName;
    data['id'] = this.id;
    data['order_approve_date'] = this.orderApproveDate;
    data['order_complete_date'] = this.orderCompleteDate;
    data['order_create_date'] = this.orderCreateDate;
    data['order_date'] = this.orderDate;
    data['order_on_way_date'] = this.orderOnWayDate;
    data['order_pick_up_date'] = this.orderPickUpDate;
    data['status'] = this.status;
    data['status_by_text'] = this.statusByText;
    data['transaction_ref'] = this.transactionRef;
    data['vendor_address'] = this.vendorAddress;
    data['vendor_id'] = this.vendorId;
    data['vendor_name'] = this.vendorName;
    return data;
  }
}

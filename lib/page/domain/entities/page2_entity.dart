class DataItem {
  int? id;
  String? createdAt;
  String? updatedAt;
  int? clientId;
  int? shopId;
  String? total;
  int? status;
  Null? noBill;
  String? lon;
  String? lat;
  Null? userId;
  int? orderNo;
  Null? deliveryDate;
  String? fee;
  int? feeType;
  String? discount;
  String? net;
  Null? feedback;
  int? paymentType;
  Null? fortId;
  String? clientName;
  String? email;
  String? mobile;
  Null? feedbackResponse;
  Null? transImg;
  Null? cityId;
  int? couponId;
  int? discountType;
  Null? address;
  int? type;
  String? advance;
  String? rest;
  int? isConfirmed;
  Null? salesMan;
  int? cashierAlert;
  Null? notes;
  Null? deviceStatus;
  Null? storeId;
  int? updateStatus;
  int? orderType;
  Null? categoryId;
  Null? damage;
  Null? profit;
  Null? carId;
  String? payment;
  int? isDeleted;
  int? billId;
  int? totalFees;
  int? guarantee;
  int? warranty;
  Null? image;
  Null? serial;
  int? salePointId;
  int? networkId;
  String? networkPayment;
  int? networkOnly;
  Null? appDevice;
  Null? congratsCard;
  Null? congratsText;
  Null? packing;
  int? isMaintenance;
  String? requestSource;
  Null? projectId;
  Null? phone;
  String? statusDisplay;
  String? humanDate;

  DataItem(
      {this.id,
        this.createdAt,
        this.updatedAt,
        this.clientId,
        this.shopId,
        this.total,
        this.status,
        this.noBill,
        this.lon,
        this.lat,
        this.userId,
        this.orderNo,
        this.deliveryDate,
        this.fee,
        this.feeType,
        this.discount,
        this.net,
        this.feedback,
        this.paymentType,
        this.fortId,
        this.clientName,
        this.email,
        this.mobile,
        this.feedbackResponse,
        this.transImg,
        this.cityId,
        this.couponId,
        this.discountType,
        this.address,
        this.type,
        this.advance,
        this.rest,
        this.isConfirmed,
        this.salesMan,
        this.cashierAlert,
        this.notes,
        this.deviceStatus,
        this.storeId,
        this.updateStatus,
        this.orderType,
        this.categoryId,
        this.damage,
        this.profit,
        this.carId,
        this.payment,
        this.isDeleted,
        this.billId,
        this.totalFees,
        this.guarantee,
        this.warranty,
        this.image,
        this.serial,
        this.salePointId,
        this.networkId,
        this.networkPayment,
        this.networkOnly,
        this.appDevice,
        this.congratsCard,
        this.congratsText,
        this.packing,
        this.isMaintenance,
        this.requestSource,
        this.projectId,
        this.phone,
        this.statusDisplay,
        this.humanDate});

  DataItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    clientId = json['client_id'];
    shopId = json['shop_id'];
    total = json['total'];
    status = json['status'];
    noBill = json['no_bill'];
    lon = json['lon'];
    lat = json['lat'];
    userId = json['user_id'];
    orderNo = json['order_no'];
    deliveryDate = json['delivery_date'];
    fee = json['fee'];
    feeType = json['fee_type'];
    discount = json['discount'];
    net = json['net'];
    feedback = json['feedback'];
    paymentType = json['payment_type'];
    fortId = json['fort_id'];
    clientName = json['client_name'];
    email = json['email'];
    mobile = json['mobile'];
    feedbackResponse = json['feedback_response'];
    transImg = json['trans_img'];
    cityId = json['city_id'];
    couponId = json['coupon_id'];
    discountType = json['discount_type'];
    address = json['address'];
    type = json['type'];
    advance = json['advance'];
    rest = json['rest'];
    isConfirmed = json['is_confirmed'];
    salesMan = json['sales_man'];
    cashierAlert = json['cashier_alert'];
    notes = json['notes'];
    deviceStatus = json['device_status'];
    storeId = json['store_id'];
    updateStatus = json['update_status'];
    orderType = json['order_type'];
    categoryId = json['category_id'];
    damage = json['damage'];
    profit = json['profit'];
    carId = json['car_id'];
    payment = json['payment'];
    isDeleted = json['is_deleted'];
    billId = json['bill_id'];
    totalFees = json['total_fees'];
    guarantee = json['guarantee'];
    warranty = json['warranty'];
    image = json['image'];
    serial = json['serial'];
    salePointId = json['sale_point_id'];
    networkId = json['network_id'];
    networkPayment = json['network_payment'];
    networkOnly = json['network_only'];
    appDevice = json['app_device'];
    congratsCard = json['congrats_card'];
    congratsText = json['congrats_text'];
    packing = json['packing'];
    isMaintenance = json['is_maintenance'];
    requestSource = json['request_source'];
    projectId = json['project_id'];
    phone = json['phone'];
    statusDisplay = json['status_display'];
    humanDate = json['human_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['client_id'] = this.clientId;
    data['shop_id'] = this.shopId;
    data['total'] = this.total;
    data['status'] = this.status;
    data['no_bill'] = this.noBill;
    data['lon'] = this.lon;
    data['lat'] = this.lat;
    data['user_id'] = this.userId;
    data['order_no'] = this.orderNo;
    data['delivery_date'] = this.deliveryDate;
    data['fee'] = this.fee;
    data['fee_type'] = this.feeType;
    data['discount'] = this.discount;
    data['net'] = this.net;
    data['feedback'] = this.feedback;
    data['payment_type'] = this.paymentType;
    data['fort_id'] = this.fortId;
    data['client_name'] = this.clientName;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['feedback_response'] = this.feedbackResponse;
    data['trans_img'] = this.transImg;
    data['city_id'] = this.cityId;
    data['coupon_id'] = this.couponId;
    data['discount_type'] = this.discountType;
    data['address'] = this.address;
    data['type'] = this.type;
    data['advance'] = this.advance;
    data['rest'] = this.rest;
    data['is_confirmed'] = this.isConfirmed;
    data['sales_man'] = this.salesMan;
    data['cashier_alert'] = this.cashierAlert;
    data['notes'] = this.notes;
    data['device_status'] = this.deviceStatus;
    data['store_id'] = this.storeId;
    data['update_status'] = this.updateStatus;
    data['order_type'] = this.orderType;
    data['category_id'] = this.categoryId;
    data['damage'] = this.damage;
    data['profit'] = this.profit;
    data['car_id'] = this.carId;
    data['payment'] = this.payment;
    data['is_deleted'] = this.isDeleted;
    data['bill_id'] = this.billId;
    data['total_fees'] = this.totalFees;
    data['guarantee'] = this.guarantee;
    data['warranty'] = this.warranty;
    data['image'] = this.image;
    data['serial'] = this.serial;
    data['sale_point_id'] = this.salePointId;
    data['network_id'] = this.networkId;
    data['network_payment'] = this.networkPayment;
    data['network_only'] = this.networkOnly;
    data['app_device'] = this.appDevice;
    data['congrats_card'] = this.congratsCard;
    data['congrats_text'] = this.congratsText;
    data['packing'] = this.packing;
    data['is_maintenance'] = this.isMaintenance;
    data['request_source'] = this.requestSource;
    data['project_id'] = this.projectId;
    data['phone'] = this.phone;
    data['status_display'] = this.statusDisplay;
    data['human_date'] = this.humanDate;
    return data;
  }
}
class ApiCall {
  int id;
  int userId;
  int organizationId;
  bool isPrimaryAdmin;
  bool isAdmin;
  bool allowedSettings;
  bool allowedPayables;
  bool allowedReports;
  bool allowedBanks;
  bool allowedAllAccess;
  bool invoiceStart;
  String bucketSize;
  int tagAdminManagerId;
  String createdAt;
  bool automatedSendInvoice;
  Null automatedSendCustomerPayment;
  String ledgerClassification;
  bool sendInvoiceInReminder;
  bool canApproveReceipts;
  String updatedAt;
  User user;

  ApiCall(
      {this.id,
      this.userId,
      this.organizationId,
      this.isPrimaryAdmin,
      this.isAdmin,
      this.allowedSettings,
      this.allowedPayables,
      this.allowedReports,
      this.allowedBanks,
      this.allowedAllAccess,
      this.invoiceStart,
      this.bucketSize,
      this.tagAdminManagerId,
      this.createdAt,
      this.automatedSendInvoice,
      this.automatedSendCustomerPayment,
      this.ledgerClassification,
      this.sendInvoiceInReminder,
      this.canApproveReceipts,
      this.updatedAt,
      this.user});

  ApiCall.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    organizationId = json['organizationId'];
    isPrimaryAdmin = json['isPrimaryAdmin'];
    isAdmin = json['isAdmin'];
    allowedSettings = json['allowedSettings'];
    allowedPayables = json['allowedPayables'];
    allowedReports = json['allowedReports'];
    allowedBanks = json['allowedBanks'];
    allowedAllAccess = json['allowedAllAccess'];
    invoiceStart = json['invoiceStart'];
    bucketSize = json['bucketSize'];
    tagAdminManagerId = json['tagAdminManagerId'];
    createdAt = json['createdAt'];
    automatedSendInvoice = json['automatedSendInvoice'];
    automatedSendCustomerPayment = json['automatedSendCustomerPayment'];
    ledgerClassification = json['ledgerClassification'];
    sendInvoiceInReminder = json['sendInvoiceInReminder'];
    canApproveReceipts = json['canApproveReceipts'];
    updatedAt = json['updatedAt'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['organizationId'] = this.organizationId;
    data['isPrimaryAdmin'] = this.isPrimaryAdmin;
    data['isAdmin'] = this.isAdmin;
    data['allowedSettings'] = this.allowedSettings;
    data['allowedPayables'] = this.allowedPayables;
    data['allowedReports'] = this.allowedReports;
    data['allowedBanks'] = this.allowedBanks;
    data['allowedAllAccess'] = this.allowedAllAccess;
    data['invoiceStart'] = this.invoiceStart;
    data['bucketSize'] = this.bucketSize;
    data['tagAdminManagerId'] = this.tagAdminManagerId;
    data['createdAt'] = this.createdAt;
    data['automatedSendInvoice'] = this.automatedSendInvoice;
    data['automatedSendCustomerPayment'] = this.automatedSendCustomerPayment;
    data['ledgerClassification'] = this.ledgerClassification;
    data['sendInvoiceInReminder'] = this.sendInvoiceInReminder;
    data['canApproveReceipts'] = this.canApproveReceipts;
    data['updatedAt'] = this.updatedAt;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  int id;
  String name;
  String email;
  String phone;
  bool optedDailyReport;
  int dailyReportJobId;
  bool optedWeeklyReport;
  int weeklyReportJobId;
  int monthlyReportJobId;
  int monthlyReportDuration;
  String referralCode;
  bool dailyReportWhatsapp;
  bool weeklyReportWhatsapp;
  String whatsappNumber;

  User(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.optedDailyReport,
      this.dailyReportJobId,
      this.optedWeeklyReport,
      this.weeklyReportJobId,
      this.monthlyReportJobId,
      this.monthlyReportDuration,
      this.referralCode,
      this.dailyReportWhatsapp,
      this.weeklyReportWhatsapp,
      this.whatsappNumber});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    optedDailyReport = json['optedDailyReport'];
    dailyReportJobId = json['dailyReportJobId'];
    optedWeeklyReport = json['optedWeeklyReport'];
    weeklyReportJobId = json['weeklyReportJobId'];
    monthlyReportJobId = json['monthlyReportJobId'];
    monthlyReportDuration = json['monthlyReportDuration'];
    referralCode = json['referralCode'];
    dailyReportWhatsapp = json['dailyReportWhatsapp'];
    weeklyReportWhatsapp = json['weeklyReportWhatsapp'];
    whatsappNumber = json['whatsappNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['optedDailyReport'] = this.optedDailyReport;
    data['dailyReportJobId'] = this.dailyReportJobId;
    data['optedWeeklyReport'] = this.optedWeeklyReport;
    data['weeklyReportJobId'] = this.weeklyReportJobId;
    data['monthlyReportJobId'] = this.monthlyReportJobId;
    data['monthlyReportDuration'] = this.monthlyReportDuration;
    data['referralCode'] = this.referralCode;
    data['dailyReportWhatsapp'] = this.dailyReportWhatsapp;
    data['weeklyReportWhatsapp'] = this.weeklyReportWhatsapp;
    data['whatsappNumber'] = this.whatsappNumber;
    return data;
  }
}

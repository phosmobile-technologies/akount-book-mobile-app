class Receipt {
  String id,
      name,
      amountPaid,
      paymentDate,
      paymentMethod,
      paymentType,
      status,
      invoiceId,
      businessId,
      userId;

  Receipt(
      this.id,
      this.name,
      this.amountPaid,
      this.paymentDate,
      this.paymentMethod,
      this.paymentType,
      this.status,
      this.invoiceId,
      this.businessId,
      this.userId);

  Receipt.fromJson(Map<String, dynamic> jsonObject) {
    this.id = jsonObject['id'];
    this.name = jsonObject['title'];
    this.amountPaid = jsonObject['number'];
    this.paymentDate = jsonObject['po_so_number'];
    this.paymentMethod = jsonObject['summary'];
    this.paymentType = jsonObject['issue_date'];
    this.status = jsonObject['due_date'];
    this.invoiceId = jsonObject['sub_total_amount'];
    this.businessId = jsonObject['total_amount'];
    this.userId = jsonObject['notes'];
  }
}

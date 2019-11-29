class InvoiceName {
  String  title, po_so_number, summary;
  int invoice_number;
  InvoiceName(this.title, this.invoice_number, this.po_so_number, this.summary);

  InvoiceName.fromJson(Map<String, dynamic> jsonObject) {
    this.title = jsonObject['id'];
    this.invoice_number = jsonObject['name'];
    this.po_so_number = jsonObject['email'];
    this.summary = jsonObject['description'];
  }
}
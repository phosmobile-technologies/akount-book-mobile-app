import 'customer.dart';
import 'invoice_name.dart';
import 'item.dart';

class Invoice {
  String id,
      title,
      summary,
      issue_date,
      due_date,
      sub_total_amount,
      total_amount,
      notes,
      status,
      footer,
      customer_id,
      business_id,
      user_id;
  int number, po_so_number;

  InvoiceName invoiceName;
  List<Item> invoiceItem = [];
  Customer invoiceCustomer;

  Invoice(
      this.id,
      this.title,
      this.number,
      this.po_so_number,
      this.summary,
      this.issue_date,
      this.due_date,
      this.sub_total_amount,
      this.total_amount,
      this.notes,
      this.status,
      this.footer,
      this.customer_id,
      this.business_id,
      this.user_id);

  Invoice.fromJson(Map<String, dynamic> jsonObject) {
    this.id = jsonObject['id'];
    this.title = jsonObject['title'];
    this.number = jsonObject['number'];
    this.po_so_number = jsonObject['po_so_number'];
    this.summary = jsonObject['summary'];
    this.issue_date = jsonObject['issue_date'];
    this.due_date = jsonObject['due_date'];
    this.sub_total_amount = jsonObject['sub_total_amount'];
    this.total_amount = jsonObject['total_amount'];
    this.notes = jsonObject['notes'];
    this.status = jsonObject['status'];
    this.footer = jsonObject['footer'];
    this.customer_id = jsonObject['customer_id'];
    this.business_id = jsonObject['business_id'];
    this.status = jsonObject['user_id'];
  }
}

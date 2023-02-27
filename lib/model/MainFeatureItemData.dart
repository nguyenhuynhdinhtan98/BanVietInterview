import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowMainFeature {
  final IconData icon;
  final String name;
  final int position;
  RowMainFeature(this.position, this.name, this.icon);
}

List<RowMainFeature> features = [
  RowMainFeature(1, "Chuyển tiền", Icons.cached),
  RowMainFeature(2, "Nạp tiền điện thoại", Icons.phone_android),
  RowMainFeature(3, "Quét mã QR", Icons.qr_code_scanner),
  RowMainFeature(4, "Thanh toán hoá đơn", Icons.payment),
  RowMainFeature(5, "Thanh toán thẻ tín dụng", Icons.credit_card),
  RowMainFeature(6, "Tạo mã QR nhận tiền", Icons.qr_code),
  RowMainFeature(7, "Đặt lịch chuyển tiền", Icons.calendar_today),
];
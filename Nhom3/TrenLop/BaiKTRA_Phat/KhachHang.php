<?php

// Một cửa hàng bán trang thiết bị điện tử quản lý hàng và hóa đơn bán hàng như sau:  
// Mỗi mặt hàng lưu thông tin: mã hàng, tên hàng, đơn giá (giá/cái) và là số chia hết cho 1000, số lượng là số nguyên dương. Hóa đơn bán hàng cho khách 
// có 3 loại: khách hàng VIP, khách hàng thân thiết và  khách hàng vãng lai. Hóa đơn nào cũng chứa thông tin: mã số (số điện thoại), họ tên khách (nếu là 
// khách vãng lại thì họ tên không cần ghi), ngày lập, mặt hàng, tổng thành tiền. Biết rằng, tổng thành tiền = thành tiền - tiền khuyến mãi + Tiền giao 
// hàng (nếu có), với thành tiền = số lượng * đơn giá và cách tính tiền khuyến mãi dành cho mỗi loại khách khác nhau: 
// Khách hàng VIP: 
//  Nếu tổng thành tiền >= 10.000.000 VNĐ thì tiền khuyến mãi =5%  tổng hóa đơn. 
//  Nếu tổng thành tiền <10.000.000 VNĐ và >=6000.000 thì tiền khuyến mãi =4%  tổng hóa đơn.  
//  Các trường hợp còn lại không giảm. 
// Khách hàng thân thiết: 
//  Nếu tổng thành tiền >= 10.000.000 VNĐ thì tiền khuyến mãi =4%  tổng hóa đơn. 
//  Nếu tổng thành tiền <10.000.000 VNĐ và >=6000.000 thì tiền khuyến mãi =3%  tổng hóa đơn.  
//  Các trường hợp còn lại không giảm. 
// Khách hàng vãng lại: ếu thành tiền >10.000.000 VNĐ, thì tiền khuyến mãi =3%  tổng hóa đơn., ngược lại tiền khuyến mãi không có. 
// Trong quá trình mua hàng khách có yêu cầu giao hàng thì được tính như sau: 
//  Đối với khách hàng VIP thì cửa hàng giao hàng miễn phí.  
//  Đối với các loại khách còn lại chỉ giao hàng cho những đơn hàng >= 10.000.000 VNĐ trong phạm vi 6km, tính từ cửa hàng Khách hàng mua 
// hàng, và áp dụng tính phí 5.000 VNĐ/km đối với số km phát sinh ngoài phạm vi 6km. 
// create class KhachHang
class KhachHang
{
   protected $maHang;
   protected $tenHang;
   protected $donGia;
   protected $soLuong;
   protected $maSo;
   protected $hoTen;
   protected $ngayLap;
   protected $tongThanhTien = 0;

   public function __construct($maHang, $tenHang, $donGia, $soLuong, $maSo, $hoTen, $ngayLap)
   {
      $this->maHang = $maHang;
      $this->tenHang = $tenHang;
      $this->donGia = $donGia;
      $this->soLuong = $soLuong;
      $this->maSo = $maSo;
      $this->hoTen = $hoTen;
      $this->ngayLap = $ngayLap;
      $this->tongThanhTien = 0;
   }

   public function tinhTongThanhTien()
   {
      $this->tongThanhTien = $this->soLuong * $this->donGia;
   }

   public function tinhTienKhuyenMai()
   {
      if ($this instanceof KhachHangVIP) {
         if ($this->tongThanhTien >= 10000000) {
            $this->tongThanhTien -= $this->tongThanhTien * 0.05;
         } elseif ($this->tongThanhTien >= 6000000) {
            $this->tongThanhTien -= $this->tongThanhTien * 0.04;
         }
      } elseif ($this instanceof KhachHangThanThiet) {
         if ($this->tongThanhTien >= 10000000) {
            $this->tongThanhTien -= $this->tongThanhTien * 0.04;
         } elseif ($this->tongThanhTien >= 6000000) {
            $this->tongThanhTien -= $this->tongThanhTien * 0.03;
         }
      } elseif ($this instanceof KhachHangVangLai) {
         if ($this->tongThanhTien > 10000000) {
            $this->tongThanhTien -= $this->tongThanhTien * 0.03;
         }
      }
   }

   public function tinhTienGiaoHang()
   {
      if ($this instanceof KhachHangVIP) {
         // Cửa hàng giao hàng miễn phí
      } else {
         if ($this->tongThanhTien >= 10000000) {
            // Giao hàng trong phạm vi 6km
         } else {
            // Tính phí giao hàng cho số km phát sinh ngoài phạm vi 6km
         }
      }
   }
}
class KhachHangVIP extends KhachHang
{
   public function __construct($maHang, $tenHang, $donGia, $soLuong, $maSo, $ngayLap)
   {
      parent::__construct($maHang, $tenHang, $donGia, $soLuong, $maSo, "", $ngayLap);
   }

   public function tinhTienKhuyenMai()
   {
      if ($this->tongThanhTien >= 10000000) {
         $this->tongThanhTien -= $this->tongThanhTien * 0.05;
      } elseif ($this->tongThanhTien >= 6000000) {
         $this->tongThanhTien -= $this->tongThanhTien * 0.04;
      }
   }

   public function tinhTienGiaoHang()
   {
      // Cửa hàng giao hàng miễn phí
   }
}

class KhachHangThanThiet extends KhachHang
{
   public function __construct($maHang, $tenHang, $donGia, $soLuong, $maSo, $hoTen, $ngayLap)
   {
      parent::__construct($maHang, $tenHang, $donGia, $soLuong, $maSo, $hoTen, $ngayLap);
   }

   public function tinhTienKhuyenMai()
   {
      if ($this->tongThanhTien >= 10000000) {
         $this->tongThanhTien -= $this->tongThanhTien * 0.04;
      } elseif ($this->tongThanhTien >= 6000000) {
         $this->tongThanhTien -= $this->tongThanhTien * 0.03;
      }
   }

   public function tinhTienGiaoHang()
   {
      if ($this->tongThanhTien >= 10000000) {
         // Giao hàng trong phạm vi 6km
      } else {
         // Tính phí giao hàng cho số km phát sinh ngoài phạm vi 6km
      }
   }
}

class KhachHangVangLai extends KhachHang
{
   public function __construct($maHang, $tenHang, $donGia, $soLuong, $maSo, $ngayLap)
   {
      parent::__construct($maHang, $tenHang, $donGia, $soLuong, $maSo, "", $ngayLap);
   }

   public function tinhTienKhuyenMai()
   {
      if ($this->tongThanhTien > 10000000) {
         $this->tongThanhTien -= $this->tongThanhTien * 0.03;
      }
   }

   public function tinhTienGiaoHang()
   {
      // Khách hàng vãng lại không yêu cầu giao hàng
   }
}
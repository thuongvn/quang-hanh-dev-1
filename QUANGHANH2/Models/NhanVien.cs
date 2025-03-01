//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QUANGHANH2.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class NhanVien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NhanVien()
        {
            this.ChiTiet_CongViec_NhanVien = new HashSet<ChiTiet_CongViec_NhanVien>();
            this.ChiTiet_NhiemVu_NhanVien = new HashSet<ChiTiet_NhiemVu_NhanVien>();
            this.GiayToes = new HashSet<GiayTo>();
            this.QuanHeGiaDinhs = new HashSet<QuanHeGiaDinh>();
            this.QuaTrinhCongTacs = new HashSet<QuaTrinhCongTac>();
        }
    
        public string MaNV { get; set; }
        public string Ten { get; set; }
        public string Tenkhac { get; set; }
        public bool GioiTinh { get; set; }
        public string CapUyHienTai { get; set; }
        public string CapUyKiem { get; set; }
        public string ChucVu { get; set; }
        public Nullable<double> PhuCapChucVu { get; set; }
        public Nullable<System.DateTime> NgaySinh { get; set; }
        public string NoiSinh { get; set; }
        public string DanToc { get; set; }
        public string QueQuan { get; set; }
        public string TonGiao { get; set; }
        public string NoiOHienTai { get; set; }
        public string SoDienThoai { get; set; }
        public string TPGiaDinhXuatThan { get; set; }
        public Nullable<System.DateTime> NgayThamGiaCachMang { get; set; }
        public Nullable<System.DateTime> NgayVaoDangCSVN { get; set; }
        public Nullable<System.DateTime> NgayChinhThuc { get; set; }
        public Nullable<System.DateTime> NgayVaoToChucCTXH { get; set; }
        public string ToChuc { get; set; }
        public Nullable<System.DateTime> NgayNhapNgu { get; set; }
        public Nullable<System.DateTime> NgayXuatNgu { get; set; }
        public string QuanHamChucVuCaoNhat { get; set; }
        public string TrinhDoHocVan { get; set; }
        public string HocHamHocViCaoNhat { get; set; }
        public string LyLuanChinhTri { get; set; }
        public string NgoaiNgu { get; set; }
        public string CongTacChinhDangLam { get; set; }
        public string NgachCongChuc { get; set; }
        public Nullable<double> MaNgach { get; set; }
        public string DanhHieuDuocPhong { get; set; }
        public string SoTruongCongTac { get; set; }
        public string CongViecDaLamLauNhat { get; set; }
        public string KhenThuong { get; set; }
        public string KyLuat { get; set; }
        public string TinhTrangSucKhoe { get; set; }
        public string ChiTietSucKhoe { get; set; }
        public Nullable<double> ChieuCao { get; set; }
        public Nullable<double> CanNang { get; set; }
        public string NhomMau { get; set; }
        public string HangThuongBinh { get; set; }
        public string GiaDinhChinhSach { get; set; }
        public string SoCMND { get; set; }
        public Nullable<System.DateTime> NgayCapCMND { get; set; }
        public string NoiCapCMND { get; set; }
        public string NgayDiLam { get; set; }
        public string TenPhanXuong { get; set; }
        public string TrangThaiLamViec { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTiet_CongViec_NhanVien> ChiTiet_CongViec_NhanVien { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTiet_NhiemVu_NhanVien> ChiTiet_NhiemVu_NhanVien { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GiayTo> GiayToes { get; set; }
        public virtual HoSo HoSo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<QuanHeGiaDinh> QuanHeGiaDinhs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<QuaTrinhCongTac> QuaTrinhCongTacs { get; set; }
    }
}

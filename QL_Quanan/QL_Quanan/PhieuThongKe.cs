namespace QL_Quanan
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhieuThongKe")]
    public partial class PhieuThongKe
    {
        [Key]
        public int MaPhieuThongKe { get; set; }

        public int MaNhanVien { get; set; }

        public DateTime Ngay { get; set; }

        [StringLength(50)]
        public string NoiDung { get; set; }

        public DateTime? TuNgay { get; set; }

        public DateTime? DenNgay { get; set; }

        public double DoanhThu { get; set; }

        public virtual NhanVien NhanVien { get; set; }
    }
}

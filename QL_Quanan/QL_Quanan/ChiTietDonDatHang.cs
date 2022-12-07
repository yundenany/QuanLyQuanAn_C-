namespace QL_Quanan
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietDonDatHang")]
    public partial class ChiTietDonDatHang
    {
        [Key]
        [Column(Order = 0)]
        public int MaChiTietDonDatHang { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaDonDatHang { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaMon { get; set; }

        public int SoLuong { get; set; }

        public virtual DonDatHang DonDatHang { get; set; }

        public virtual Mon Mon { get; set; }
    }
}

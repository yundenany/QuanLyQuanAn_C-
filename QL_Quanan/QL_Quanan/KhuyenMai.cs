namespace QL_Quanan
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("KhuyenMai")]
    public partial class KhuyenMai
    {
        [Key]
        public int MaKhuyenMai { get; set; }

        public int MaMon { get; set; }

        public DateTime? TuNgay { get; set; }

        public DateTime? DenNgay { get; set; }

        [StringLength(250)]
        public string NoiDung { get; set; }

        [StringLength(50)]
        public string DieuKien { get; set; }

        public virtual Mon Mon { get; set; }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_18_A03_JSDRBZRJL_metadata))]
    public partial class EDU_ZXJZ_18_A03_JSDRBZRJL
    {
        public EDU_ZXJZ_18_A03_JSDRBZRJL()
        {
            DRBJ = "";
        }
        public class EDU_ZXJZ_18_A03_JSDRBZRJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教职工")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "担任班级")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DRBJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "担任时间")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal DRSJ { get; set; }


            [Display(Name = "备注")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}

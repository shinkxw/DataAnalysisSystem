namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZZS_02_01_RXCJ_metadata))]
    public partial class EDU_ZZZS_02_01_RXCJ
    {
        public EDU_ZZZS_02_01_RXCJ()
        {
        }
        public class EDU_ZZZS_02_01_RXCJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生信息数据表")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "入学总分")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal RXZF { get; set; }


            [Display(Name = "中考总分")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal GKZF { get; set; }


            [Display(Name = "附加分")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal FJF { get; set; }


            [Display(Name = "附加分类别码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJFLBM { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A15_KHHZDW_metadata))]
    public partial class EDU_ZXXS_51_A15_KHHZDW
    {
        public EDU_ZXXS_51_A15_KHHZDW()
        {
            DWMC = "";
        }
        public class EDU_ZXXS_51_A15_KHHZDW_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核汇总")]
            public Int32 KHHZID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "档位名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DWMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "划分上限")]
            public Int32 HFSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "划分下限")]
            public Int32 HFXX { get; set; }


        }
    }
}

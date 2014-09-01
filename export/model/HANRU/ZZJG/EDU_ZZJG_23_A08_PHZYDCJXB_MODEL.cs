namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_23_A08_PHZYDCJXB_metadata))]
    public partial class EDU_ZZJG_23_A08_PHZYDCJXB
    {
        public EDU_ZZJG_23_A08_PHZYDCJXB()
        {
            JXBMC = "";
        }
        public class EDU_ZZJG_23_A08_PHZYDCJXB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调查名称")]
            public Int32 DCMCID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教学部名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXBMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "名额上限")]
            public Int32 MESX { get; set; }


        }
    }
}

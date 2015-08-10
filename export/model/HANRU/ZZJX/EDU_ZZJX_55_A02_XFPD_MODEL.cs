namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A02_XFPD_metadata))]
    public partial class EDU_ZZJX_55_A02_XFPD
    {
        public EDU_ZZJX_55_A02_XFPD()
        {
            PDMC = "";
        }
        public class EDU_ZZJX_55_A02_XFPD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评定名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PDMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分数上限")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FSSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分数下限")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FSXX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所占课程学分比例")]
            [Range(typeof(decimal), "0", "999")]
            public decimal BL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分制信息")]
            public Int32 FZXXID { get; set; }


        }
    }
}

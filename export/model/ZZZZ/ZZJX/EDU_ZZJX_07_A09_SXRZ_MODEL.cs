namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A09_SXRZ_metadata))]
    public partial class EDU_ZZJX_07_A09_SXRZ
    {
        public EDU_ZZJX_07_A09_SXRZ()
        {
            RZBT = "";
            NR = "";
        }
        public class EDU_ZZJX_07_A09_SXRZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习日志")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生信息")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习计划")]
            public Int32 SXJHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习阶段")]
            public Int32 SXJDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习周/月表")]
            public Int32 SXZYID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "日志标题")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RZBT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


        }
    }
}

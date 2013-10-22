namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A01_SXJL_metadata))]
    public partial class EDU_ZZJX_22_A01_SXJL
    {
        public EDU_ZZJX_22_A01_SXJL()
        {
            KSSJ = new DateTime(1900, 1, 1);
            JSSJ = new DateTime(1900, 1, 1);
            SXNR = "";
            SXFS = "";
            ZDSFXM = "";
            ZDSFPY = "";
            ZDSFPDSJ = new DateTime(1900, 1, 1);
            ZDJSXM = "";
            ZDJSPY = "";
            ZDJSPDSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJX_22_A01_SXJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "实习内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "实习反思")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXFS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "自我评定")]
            public Int32 ZWPD { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "指导师傅姓名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDSFXM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "指导师傅评语")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDSFPY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "指导师傅评定时间")]
            public DateTime ZDSFPDSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "师傅评定")]
            public Int32 ZFPD { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "指导教师姓名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDJSXM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "指导教师评语")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDJSPY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "指导教师评定时间")]
            public DateTime ZDJSPDSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师评定")]
            public Int32 JSPD { get; set; }


        }
    }
}

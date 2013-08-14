namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A10_SXJD_metadata))]
    public partial class EDU_ZZJX_07_A10_SXJD
    {
        public EDU_ZZJX_07_A10_SXJD()
        {
            JDNR = "";
            SXDWYJ = "";
            BJYJ = "";
            XXYJ = "";
        }
        public class EDU_ZZJX_07_A10_SXJD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习鉴定信息")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习计划")]
            public Int32 SXJHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生信息")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "鉴定内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "实习单位意见")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXDWYJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级意见")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJYJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学校意见")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXYJ { get; set; }


        }
    }
}

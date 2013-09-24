namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A08_SXTS_metadata))]
    public partial class EDU_ZZJX_07_A08_SXTS
    {
        public EDU_ZZJX_07_A08_SXTS()
        {
            TSSJ = new DateTime(1900, 1, 1);
            TSYY = "";
            TSJG = "";
            QYJY = "";
        }
        public class EDU_ZZJX_07_A08_SXTS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习投诉")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业")]
            public Int32 QYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习计划")]
            public Int32 SXJHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "投诉学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "投诉时间")]
            public DateTime TSSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "投诉原因")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TSYY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "投诉结果")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TSJG { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "企业建议")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QYJY { get; set; }


        }
    }
}

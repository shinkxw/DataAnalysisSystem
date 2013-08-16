namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A11_SXJC_metadata))]
    public partial class EDU_ZZJX_07_A11_SXJC
    {
        public EDU_ZZJX_07_A11_SXJC()
        {
            CLJG = "";
            BZ = "";
        }
        public class EDU_ZZJX_07_A11_SXJC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "奖惩信息")]
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "奖惩类型")]
            public Int32 JCLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "奖惩日期")]
            public DateTime JCRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "处理结果")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLJG { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加人")]
            public Int32 TJR { get; set; }


        }
    }
}

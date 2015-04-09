namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A51_XFZKKGL_metadata))]
    public partial class EDU_ZXJX_53_A51_XFZKKGL
    {
        public EDU_ZXJX_53_A51_XFZKKGL()
        {
            KKR = "";
            KCNR = "";
            HJQK = "";
        }
        public class EDU_ZXJX_53_A51_XFZKKGL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程名称")]
            public Int32 KCMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "开课人")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KKR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "获奖情况")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HJQK { get; set; }


        }
    }
}

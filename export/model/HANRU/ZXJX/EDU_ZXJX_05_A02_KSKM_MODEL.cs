namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_05_A02_KSKM_metadata))]
    public partial class EDU_ZXJX_05_A02_KSKM
    {
        public EDU_ZXJX_05_A02_KSKM()
        {
            KCMC = "";
            NJMC = "";
            BJMC = "";
        }
        public class EDU_ZXJX_05_A02_KSKM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属考试")]
            public Int32 SSKSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师任课编号")]
            public Int32 JSRKID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程名称")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级名称")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩总分")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal CJZF { get; set; }


        }
    }
}

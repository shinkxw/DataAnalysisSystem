namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_56_A21_XSWHSZPJXM_metadata))]
    public partial class EDU_ZXXS_56_A21_XSWHSZPJXM
    {
        public EDU_ZXXS_56_A21_XSWHSZPJXM()
        {
            KCMC = "";
            PJXM = "";
        }
        public class EDU_ZXXS_56_A21_XSWHSZPJXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评价项目")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJXM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩打分方式")]
            public Int32 CJDFFSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价打分方式")]
            public Int32 PJDFFSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


        }
    }
}

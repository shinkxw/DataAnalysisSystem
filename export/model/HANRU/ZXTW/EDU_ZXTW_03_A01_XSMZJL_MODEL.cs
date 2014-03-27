namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXTW_03_A01_XSMZJL_metadata))]
    public partial class EDU_ZXTW_03_A01_XSMZJL
    {
        public EDU_ZXTW_03_A01_XSMZJL()
        {
            BJID = "";
            JZKSSJ = DateTime.Now;
            JZJSSJ = DateTime.Now;
            JZYY = "";
            ZDJG = "";
        }
        public class EDU_ZXTW_03_A01_XSMZJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "就诊开始时间")]
            public DateTime JZKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "就诊结束时间")]
            public DateTime JZJSSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "就诊原因")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZYY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "诊断结果")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDJG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "费用")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal FY { get; set; }


        }
    }
}

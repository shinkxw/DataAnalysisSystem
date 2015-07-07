namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A05_CWZYXL_metadata))]
    public partial class EDU_ZZJG_25_A05_CWZYXL
    {
        public EDU_ZZJG_25_A05_CWZYXL()
        {
            ZYXLDM = "";
            ZYXLMC = "";
        }
        public class EDU_ZZJG_25_A05_CWZYXL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业大类")]
            public Int32 ZYDLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "专业小类代码")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYXLDM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "专业小类名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYXLMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师数")]
            public Int32 JSS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生数")]
            public Int32 XSS { get; set; }


        }
    }
}

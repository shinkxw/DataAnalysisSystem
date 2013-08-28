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
            KCH = "";
            NJIDLB = "";
            NJMCLB = "";
            BJIDLB = "";
            BJMCLB = "";
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


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJMCLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMCLB { get; set; }


            [Display(Name = "成绩总分")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal CJZF { get; set; }


        }
    }
}

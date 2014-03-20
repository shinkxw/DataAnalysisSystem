namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_CFXT_01_A02_KS_metadata))]
    public partial class EDU_CFXT_01_A02_KS
    {
        public EDU_CFXT_01_A02_KS()
        {
            KSMC = "";
            KSKMIDLB = "";
            KSKMMCLB = "";
            CFWZ = "";
            HDXSJG = "";
            HDXXJG = "";
        }
        public class EDU_CFXT_01_A02_KS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考试名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考试科目ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSKMIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考试科目名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSKMMCLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "查分网址")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CFWZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "查分状态")]
            public Int32 CFZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "划档线")]
            public Int32 HDX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "划档线上结果")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDXSJG { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "划档线下结果")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDXXJG { get; set; }


        }
    }
}

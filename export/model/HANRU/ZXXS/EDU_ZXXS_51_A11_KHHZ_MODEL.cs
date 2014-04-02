namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A11_KHHZ_metadata))]
    public partial class EDU_ZXXS_51_A11_KHHZ
    {
        public EDU_ZXXS_51_A11_KHHZ()
        {
            MC = "";
            YXDLIDLB = "";
            YXDLMCLB = "";
            CXDLIDLB = "";
            CXDLMCLB = "";
            SFXSWDD = "";
        }
        public class EDU_ZXXS_51_A11_KHHZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "汇总方式")]
            public Int32 HZFS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核对象")]
            public Int32 KHDX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "优先大类ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YXDLIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "优先大类名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YXDLMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "优先排序方式")]
            public Int32 YXPXFS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "次先大类ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CXDLIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "次先大类名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CXDLMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "次先排序方式")]
            public Int32 CXPXFS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "等第评选方式")]
            public Int32 DDPXFS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否显示无等第")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFXSWDD { get; set; }


        }
    }
}

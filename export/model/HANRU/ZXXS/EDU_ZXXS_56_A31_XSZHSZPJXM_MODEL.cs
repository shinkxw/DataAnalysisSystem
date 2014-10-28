namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_56_A31_XSZHSZPJXM_metadata))]
    public partial class EDU_ZXXS_56_A31_XSZHSZPJXM
    {
        public EDU_ZXXS_56_A31_XSZHSZPJXM()
        {
            XMMC = "";
            YS = "";
            GJBX = "";
        }
        public class EDU_ZXXS_56_A31_XSZHSZPJXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "要素")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "关键表现")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GJBX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "自我评定打分方式")]
            public Int32 ZWPDDFFSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "小组评定打分方式")]
            public Int32 XZPDDFFSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


        }
    }
}

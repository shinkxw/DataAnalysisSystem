namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_20_A04_LCBZ_metadata))]
    public partial class EDU_OAXT_20_A04_LCBZ
    {
        public EDU_OAXT_20_A04_LCBZ()
        {
            BZMC = "";
            SPRIDLB = "";
            SPRMCLB = "";
            BZ = "";
        }
        public class EDU_OAXT_20_A04_LCBZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "步骤名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "流程模板")]
            public Int32 LCMBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审批人ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPRIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审批人名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPRMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上一步骤")]
            public Int32 SYBZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "下一步骤")]
            public Int32 XYBZID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}

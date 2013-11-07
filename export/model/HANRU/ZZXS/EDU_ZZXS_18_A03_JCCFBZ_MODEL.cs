namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_18_A03_JCCFBZ_metadata))]
    public partial class EDU_ZZXS_18_A03_JCCFBZ
    {
        public EDU_ZZXS_18_A03_JCCFBZ()
        {
            BZMC = "";
            SHRIDLB = "";
            SHRMCLB = "";
            BZ = "";
        }
        public class EDU_ZZXS_18_A03_JCCFBZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "处分类型")]
            public Int32 CFLXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "步骤名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核人ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核人名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRMCLB { get; set; }


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

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A14_KHHZDLPZ_metadata))]
    public partial class EDU_ZXXS_51_A14_KHHZDLPZ
    {
        public EDU_ZXXS_51_A14_KHHZDLPZ()
        {
            XYXMIDLB = "";
            XSXX = "";
        }
        public class EDU_ZXXS_51_A14_KHHZDLPZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核汇总")]
            public Int32 KHHZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "大类")]
            public Int32 DLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "折算率")]
            public Int32 ZSL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "选用项目ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XYXMIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "显示信息")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSXX { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_58_A01_DSJDSZ_metadata))]
    public partial class EDU_ZXXS_58_A01_DSJDSZ
    {
        public EDU_ZXXS_58_A01_DSJDSZ()
        {
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            KXXQIDLB = "";
            KXXQMCLB = "";
            KXDSIDLB = "";
            KXDSXMLB = "";
            FXKSSJ = DateTime.Now;
            FXJSSJ = DateTime.Now;
        }
        public class EDU_ZXXS_58_A01_DSJDSZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "可选学期ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KXXQIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "可选学期名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KXXQMCLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "可选导师ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KXDSIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "可选导师姓名列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KXDSXMLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "复选开始时间")]
            public DateTime FXKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "复选结束时间")]
            public DateTime FXJSSJ { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A03_XXSXZY_metadata))]
    public partial class EDU_ZZJX_07_A03_XXSXZY
    {
        public EDU_ZZJX_07_A03_XXSXZY()
        {
            MC = "";
        }
        public class EDU_ZZJX_07_A03_XXSXZY_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习周/月")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习计划")]
            public Int32 SXJHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习阶段")]
            public Int32 SXJDID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "类型")]
            public Int32 LX { get; set; }


        }
    }
}

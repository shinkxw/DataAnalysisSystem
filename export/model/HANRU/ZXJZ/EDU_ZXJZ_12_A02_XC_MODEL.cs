namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_12_A02_XC_metadata))]
    public partial class EDU_ZXJZ_12_A02_XC
    {
        public EDU_ZXJZ_12_A02_XC()
        {
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            FFSJ = DateTime.Now;
        }
        public class EDU_ZXJZ_12_A02_XC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教工基本信息")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "薪酬类型")]
            public Int32 XCLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "金额")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal JE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发放时间")]
            public DateTime FFSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发放批次")]
            public Int32 FFPCID { get; set; }


        }
    }
}

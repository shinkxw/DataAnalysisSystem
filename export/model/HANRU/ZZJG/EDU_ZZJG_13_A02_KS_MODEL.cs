namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_13_A02_KS_metadata))]
    public partial class EDU_ZZJG_13_A02_KS
    {
        public EDU_ZZJG_13_A02_KS()
        {
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZJG_13_A02_KS_metadata
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
            [Display(Name = "课时类型")]
            public Int32 KSLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数量")]
            public Int32 SL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}

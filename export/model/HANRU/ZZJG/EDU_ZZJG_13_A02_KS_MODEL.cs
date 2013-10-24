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
            KSSJ = new DateTime(1900, 1, 1);
            JSSJ = new DateTime(1900, 1, 1);
            FFSJ = new DateTime(1900, 1, 1);
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
            [Display(Name = "薪酬类型")]
            public Int32 XCLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "金额")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal JE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发放时间")]
            public DateTime FFSJ { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_04_A01_JBDJ_metadata))]
    public partial class EDU_ZZJG_04_A01_JBDJ
    {
        public EDU_ZZJG_04_A01_JBDJ()
        {
        }
        public class EDU_ZZJG_04_A01_JBDJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "加班登记表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教职工")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "加班类型")]
            public Int32 JBLX { get; set; }


        }
    }
}

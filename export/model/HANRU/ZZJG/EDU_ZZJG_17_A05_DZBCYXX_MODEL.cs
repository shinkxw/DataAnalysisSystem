namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_17_A05_DZBCYXX_metadata))]
    public partial class EDU_ZZJG_17_A05_DZBCYXX
    {
        public EDU_ZZJG_17_A05_DZBCYXX()
        {
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZJG_17_A05_DZBCYXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "党员信息")]
            public Int32 DYXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教工基本信息")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "党支部")]
            public Int32 DZBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "党支部职位")]
            public Int32 DZBZWID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加教师")]
            public Int32 TJJSID { get; set; }


            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}

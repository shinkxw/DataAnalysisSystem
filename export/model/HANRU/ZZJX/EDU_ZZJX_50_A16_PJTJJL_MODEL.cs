namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A16_PJTJJL_metadata))]
    public partial class EDU_ZZJX_50_A16_PJTJJL
    {
        public EDU_ZZJX_50_A16_PJTJJL()
        {
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZJX_50_A16_PJTJJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "提交时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}

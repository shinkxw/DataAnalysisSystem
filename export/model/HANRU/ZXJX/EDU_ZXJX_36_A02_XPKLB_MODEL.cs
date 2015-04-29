namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_36_A02_XPKLB_metadata))]
    public partial class EDU_ZXJX_36_A02_XPKLB
    {
        public EDU_ZXJX_36_A02_XPKLB()
        {
            RQ = DateTime.Now;
        }
        public class EDU_ZXJX_36_A02_XPKLB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师请假信息表")]
            public Int32 JSQJXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排课结果记录表")]
            public Int32 PKJGJLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "日期")]
            public DateTime RQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "处理状态")]
            public Int32 CLZT { get; set; }


        }
    }
}

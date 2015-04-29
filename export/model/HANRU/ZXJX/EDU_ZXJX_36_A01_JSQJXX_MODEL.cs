namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_36_A01_JSQJXX_metadata))]
    public partial class EDU_ZXJX_36_A01_JSQJXX
    {
        public EDU_ZXJX_36_A01_JSQJXX()
        {
            QJKSSJ = DateTime.Now;
            QJJSSJ = DateTime.Now;
        }
        public class EDU_ZXJX_36_A01_JSQJXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "请假教师")]
            public Int32 QJJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "请假开始时间")]
            public DateTime QJKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "请假结束时间")]
            public DateTime QJJSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "处理状态")]
            public Int32 CLZT { get; set; }


        }
    }
}

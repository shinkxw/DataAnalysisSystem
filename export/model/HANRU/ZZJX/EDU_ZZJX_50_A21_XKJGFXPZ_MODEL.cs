namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A21_XKJGFXPZ_metadata))]
    public partial class EDU_ZZJX_50_A21_XKJGFXPZ
    {
        public EDU_ZZJX_50_A21_XKJGFXPZ()
        {
        }
        public class EDU_ZZJX_50_A21_XKJGFXPZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "星期")]
            public Int32 XQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否必须选课")]
            public Int32 SFBXXK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选课数量上限")]
            public Int32 XKSLSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选课数量下限")]
            public Int32 XKSLXX { get; set; }


        }
    }
}

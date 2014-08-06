namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A04_XSXKJL_metadata))]
    public partial class EDU_ZZJX_50_A04_XSXKJL
    {
        public EDU_ZZJX_50_A04_XSXKJL()
        {
        }
        public class EDU_ZZJX_50_A04_XSXKJL_metadata
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
            [Display(Name = "教学班")]
            public Int32 JXBID { get; set; }


        }
    }
}

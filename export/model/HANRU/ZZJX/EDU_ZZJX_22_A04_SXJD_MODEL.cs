namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A04_SXJD_metadata))]
    public partial class EDU_ZZJX_22_A04_SXJD
    {
        public EDU_ZZJX_22_A04_SXJD()
        {
        }
        public class EDU_ZZJX_22_A04_SXJD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分")]
            public Int32 XF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否汇总")]
            public Int32 SFHZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "鉴定人")]
            public Int32 JDRID { get; set; }


        }
    }
}

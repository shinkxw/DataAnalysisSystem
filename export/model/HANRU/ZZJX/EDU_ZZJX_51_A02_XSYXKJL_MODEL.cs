namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_51_A02_XSYXKJL_metadata))]
    public partial class EDU_ZZJX_51_A02_XSYXKJL
    {
        public EDU_ZZJX_51_A02_XSYXKJL()
        {
            XKSJ = DateTime.Now;
        }
        public class EDU_ZZJX_51_A02_XSYXKJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程")]
            public Int32 KCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选课时间")]
            public DateTime XKSJ { get; set; }


        }
    }
}

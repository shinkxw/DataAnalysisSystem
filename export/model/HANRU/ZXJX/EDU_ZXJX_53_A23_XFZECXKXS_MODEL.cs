namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A23_XFZECXKXS_metadata))]
    public partial class EDU_ZXJX_53_A23_XFZECXKXS
    {
        public EDU_ZXJX_53_A23_XFZECXKXS()
        {
        }
        public class EDU_ZXJX_53_A23_XFZECXKXS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选课")]
            public Int32 XKID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


        }
    }
}

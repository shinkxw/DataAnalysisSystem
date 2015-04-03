namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A11_DFDL_metadata))]
    public partial class EDU_OAXT_50_A11_DFDL
    {
        public EDU_OAXT_50_A11_DFDL()
        {
        }
        public class EDU_OAXT_50_A11_DFDL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "根节点")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "项目")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分对象组")]
            public Int32 DFDXZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否需要审核")]
            public Int32 SFXYSH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核方式")]
            public Int32 SHFS { get; set; }


        }
    }
}

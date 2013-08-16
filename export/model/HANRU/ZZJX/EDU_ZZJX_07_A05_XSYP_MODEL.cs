namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A05_XSYP_metadata))]
    public partial class EDU_ZZJX_07_A05_XSYP
    {
        public EDU_ZZJX_07_A05_XSYP()
        {
        }
        public class EDU_ZZJX_07_A05_XSYP_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生应聘信息")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生信息")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业")]
            public Int32 QYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习岗位")]
            public Int32 GWID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校审核")]
            public Int32 XXSH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业审核")]
            public Int32 QYSH { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A07_SXZG_metadata))]
    public partial class EDU_ZZJX_07_A07_SXZG
    {
        public EDU_ZZJX_07_A07_SXZG()
        {
        }
        public class EDU_ZZJX_07_A07_SXZG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习转岗")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "转出岗位")]
            public Int32 ZCGW { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "转出岗位企业")]
            public Int32 ZCGWQY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "转入岗位")]
            public Int32 ZRGW { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "转入岗位企业")]
            public Int32 ZRGWQY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班主任审核")]
            public Int32 BZRSH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "转出企业审核")]
            public Int32 ZCQYSH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "转入企业审核")]
            public Int32 ZRQYSH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "就业处审核")]
            public Int32 JYCSH { get; set; }


        }
    }
}

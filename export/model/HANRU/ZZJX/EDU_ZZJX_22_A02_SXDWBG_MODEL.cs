namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A02_SXDWBG_metadata))]
    public partial class EDU_ZZJX_22_A02_SXDWBG
    {
        public EDU_ZZJX_22_A02_SXDWBG()
        {
        }
        public class EDU_ZZJX_22_A02_SXDWBG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = " 变更学生")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "变更前岗位")]
            public Int32 OrgJobID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "变更前企业")]
            public Int32 OrgComID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "变更后岗位")]
            public Int32 NowJobID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "变更后企业")]
            public Int32 NowComID { get; set; }


        }
    }
}

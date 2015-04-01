namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A13_DFFS_metadata))]
    public partial class EDU_OAXT_50_A13_DFFS
    {
        public EDU_OAXT_50_A13_DFFS()
        {
        }
        public class EDU_OAXT_50_A13_DFFS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "项目")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分类型")]
            public Int32 DFLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最大值")]
            public Int32 ZDZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最小值")]
            public Int32 ZXZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "默认值")]
            public Int32 MRZ { get; set; }


        }
    }
}

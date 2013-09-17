namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_08_A02_XXGCXPJJG_metadata))]
    public partial class EDU_ZXJX_08_A02_XXGCXPJJG
    {
        public EDU_ZXJX_08_A02_XXGCXPJJG()
        {
        }
        public class EDU_ZXJX_08_A02_XXGCXPJJG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价配置")]
            public Int32 PZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分数")]
            [Range(typeof(decimal), "0", "1000000000000000000")]
            public decimal FS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "校历周")]
            public Int32 XLZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


        }
    }
}

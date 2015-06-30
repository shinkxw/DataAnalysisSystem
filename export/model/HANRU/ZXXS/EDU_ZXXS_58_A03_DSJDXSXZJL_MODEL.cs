namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_58_A03_DSJDXSXZJL_metadata))]
    public partial class EDU_ZXXS_58_A03_DSJDXSXZJL
    {
        public EDU_ZXXS_58_A03_DSJDXSXZJL()
        {
        }
        public class EDU_ZXXS_58_A03_DSJDXSXZJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师1")]
            public Int32 JS1ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师2")]
            public Int32 JS2ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选择结果1")]
            public Int32 XZJG1 { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选择结果2")]
            public Int32 XZJG2 { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A17_FJJL_metadata))]
    public partial class EDU_OAXT_50_A17_FJJL
    {
        public EDU_OAXT_50_A17_FJJL()
        {
            FJZ = "";
        }
        public class EDU_OAXT_50_A17_FJJL_metadata
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
            [Display(Name = "打分节点")]
            public Int32 DFJDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分结果")]
            public Int32 DFJGID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "附加字段")]
            public Int32 FJZDID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "附加值")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJZ { get; set; }


        }
    }
}

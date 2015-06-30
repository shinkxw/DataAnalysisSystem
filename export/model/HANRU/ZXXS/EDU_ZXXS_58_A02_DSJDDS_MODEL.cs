namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_58_A02_DSJDDS_metadata))]
    public partial class EDU_ZXXS_58_A02_DSJDDS
    {
        public EDU_ZXXS_58_A02_DSJDDS()
        {
            ZP = "";
            XK = "";
            GRRY = "";
            ZWJS = "";
        }
        public class EDU_ZXXS_58_A02_DSJDDS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "照片")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZP { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学科")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XK { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "个人荣誉")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GRRY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "自我介绍")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZWJS { get; set; }


        }
    }
}

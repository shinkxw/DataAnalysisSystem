namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_58_A04_DSJDXSXX_metadata))]
    public partial class EDU_ZXXS_58_A04_DSJDXSXX
    {
        public EDU_ZXXS_58_A04_DSJDXSXX()
        {
            ZP = "";
            ZWJS = "";
        }
        public class EDU_ZXXS_58_A04_DSJDXSXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "照片")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZP { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "自我介绍")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZWJS { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A25_BXKKTJLJG_metadata))]
    public partial class EDU_ZXJX_53_A25_BXKKTJLJG
    {
        public EDU_ZXJX_53_A25_BXKKTJLJG()
        {
            JG = "";
        }
        public class EDU_ZXJX_53_A25_BXKKTJLJG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选课记录")]
            public Int32 XKJLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "项目")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "结果")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JG { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_02_A02_SJZSD_metadata))]
    public partial class EDU_ZYZX_02_A02_SJZSD
    {
        public EDU_ZYZX_02_A02_SJZSD()
        {
            ZSDMC = "";
        }
        public class EDU_ZYZX_02_A02_SJZSD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程库")]
            public Int32 KCKID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "知识点名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSDMC { get; set; }


        }
    }
}

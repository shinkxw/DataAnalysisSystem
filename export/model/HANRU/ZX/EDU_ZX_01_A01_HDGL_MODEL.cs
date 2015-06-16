namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZX_01_A01_HDGL_metadata))]
    public partial class EDU_ZX_01_A01_HDGL
    {
        public EDU_ZX_01_A01_HDGL()
        {
            HDBMBBT = "";
            HDBMTZ = "";
            HDQTZT = "";
        }
        public class EDU_ZX_01_A01_HDGL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "活动报名表标题")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDBMBBT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "活动报名通知")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDBMTZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "活动启停状态")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDQTZT { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_33_A02_GZ_metadata))]
    public partial class EDU_OAXT_33_A02_GZ
    {
        public EDU_OAXT_33_A02_GZ()
        {
            QZTPLJ = "";
        }
        public class EDU_OAXT_33_A02_GZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "签章图片路径")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QZTPLJ { get; set; }


        }
    }
}

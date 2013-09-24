namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_MHXT_FWLL_metadata))]
    public partial class EDU_ZYZX_MHXT_FWLL
    {
        public EDU_ZYZX_MHXT_FWLL()
        {
            ACCESSIP = "";
            ACCESSURL = "";
            ACCESSTIME = new DateTime(1900, 1, 1);
        }
        public class EDU_ZYZX_MHXT_FWLL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "访问履历")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "访问IP")]
            [StringLength(150)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ACCESSIP { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "访问链接")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ACCESSURL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "访问时间")]
            public DateTime ACCESSTIME { get; set; }


        }
    }
}

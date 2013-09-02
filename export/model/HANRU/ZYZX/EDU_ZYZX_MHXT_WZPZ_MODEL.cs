namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_MHXT_WZPZ_metadata))]
    public partial class EDU_ZYZX_MHXT_WZPZ
    {
        public EDU_ZYZX_MHXT_WZPZ()
        {
            WEBNAME = "";
            WEBURL = "";
        }
        public class EDU_ZYZX_MHXT_WZPZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "网站名")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WEBNAME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否开启")]
            public Int32 STATUID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "网址")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WEBURL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站样式")]
            public Int32 CSSID { get; set; }


        }
    }
}

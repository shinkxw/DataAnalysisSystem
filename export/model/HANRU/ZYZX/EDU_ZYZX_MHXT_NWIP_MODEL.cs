namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_MHXT_NWIP_metadata))]
    public partial class EDU_ZYZX_MHXT_NWIP
    {
        public EDU_ZYZX_MHXT_NWIP()
        {
            IP = "";
        }
        public class EDU_ZYZX_MHXT_NWIP_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "内网IP配置")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "IP地址")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IP { get; set; }


        }
    }
}

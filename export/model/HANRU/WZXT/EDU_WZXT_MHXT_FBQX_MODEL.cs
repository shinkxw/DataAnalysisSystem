namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_FBQX_metadata))]
    public partial class EDU_WZXT_MHXT_FBQX
    {
        public EDU_WZXT_MHXT_FBQX()
        {
            LOGINNAME = "";
            LMLIST = "";
        }
        public class EDU_WZXT_MHXT_FBQX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "发布权限")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LOGINNAME { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "栏目")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMLIST { get; set; }


            [Display(Name = "栏目文字")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMNAMELIST { get; set; }


        }
    }
}

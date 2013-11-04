namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_YHQX_metadata))]
    public partial class EDU_WZXT_MHXT_YHQX
    {
        public EDU_WZXT_MHXT_YHQX()
        {
            LOGINNAME = "";
            JSIDLST = "";
            JSNAMELST = "";
        }
        public class EDU_WZXT_MHXT_YHQX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "权限")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户名")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LOGINNAME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "类型")]
            public Int32 LX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "角色ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSIDLST { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "角色名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSNAMELST { get; set; }


        }
    }
}

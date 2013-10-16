namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_YHFBQX_metadata))]
    public partial class EDU_WZXT_MHXT_YHFBQX
    {
        public EDU_WZXT_MHXT_YHFBQX()
        {
            LOGINNAME = "";
            JSIDLB = "";
        }
        public class EDU_WZXT_MHXT_YHFBQX_metadata
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
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LOGINNAME { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "角色ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSIDLB { get; set; }


            [Display(Name = "是否需要审核")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFXYSH { get; set; }


        }
    }
}

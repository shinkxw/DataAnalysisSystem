namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_YQLJLX_metadata))]
    public partial class EDU_WZXT_MHXT_YQLJLX
    {
        public EDU_WZXT_MHXT_YQLJLX()
        {
            NAME = "";
        }
        public class EDU_WZXT_MHXT_YQLJLX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "友情链接类型")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "类型名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "显示方式")]
            public Int32 SHOWSTYLE { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_TPXT_TPSZ_metadata))]
    public partial class EDU_ZYZX_TPXT_TPSZ
    {
        public EDU_ZYZX_TPXT_TPSZ()
        {
        }
        public class EDU_ZYZX_TPXT_TPSZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "投票设置")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Display(Name = "标题")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TITLE { get; set; }


            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CONTENT { get; set; }


            [Display(Name = "显示方式")]
            public Int32 SHOWSTYLEID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "显示样式")]
            public Int32 CSSID { get; set; }


            [Display(Name = "投票人")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LOGINNAMELIST { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否开启")]
            public Int32 STARTSTATU { get; set; }


        }
    }
}

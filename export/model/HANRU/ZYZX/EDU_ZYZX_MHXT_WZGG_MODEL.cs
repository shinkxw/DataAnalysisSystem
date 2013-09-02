namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_MHXT_WZGG_metadata))]
    public partial class EDU_ZYZX_MHXT_WZGG
    {
        public EDU_ZYZX_MHXT_WZGG()
        {
        }
        public class EDU_ZYZX_MHXT_WZGG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站广告")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "显示型式")]
            public Int32 SHOWTYPE { get; set; }


            [Display(Name = "广告内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ADCONTENT { get; set; }


            [Display(Name = "广告链接")]
            [StringLength(150)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GGLJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否显示")]
            public Int32 SHOWSTATU { get; set; }


        }
    }
}

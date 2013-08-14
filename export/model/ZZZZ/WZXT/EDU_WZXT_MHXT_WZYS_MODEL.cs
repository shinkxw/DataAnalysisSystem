namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_WZYS_metadata))]
    public partial class EDU_WZXT_MHXT_WZYS
    {
        public EDU_WZXT_MHXT_WZYS()
        {
            NAME = "";
        }
        public class EDU_WZXT_MHXT_WZYS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "样式库")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "样式名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Display(Name = "效果图")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHOWIMG { get; set; }


        }
    }
}

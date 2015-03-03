namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A24_XFZKTNR_metadata))]
    public partial class EDU_ZXJX_53_A24_XFZKTNR
    {
        public EDU_ZXJX_53_A24_XFZKTNR()
        {
            KTNR = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXJX_53_A24_XFZKTNR_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分制教学班")]
            public Int32 XFZJXBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课堂内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KTNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}

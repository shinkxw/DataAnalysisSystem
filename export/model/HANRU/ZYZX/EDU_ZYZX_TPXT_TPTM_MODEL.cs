namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_TPXT_TPTM_metadata))]
    public partial class EDU_ZYZX_TPXT_TPTM
    {
        public EDU_ZYZX_TPXT_TPTM()
        {
        }
        public class EDU_ZYZX_TPXT_TPTM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "投票题目")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "投票")]
            public Int32 TPID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "投票形式")]
            public Int32 TYPEID { get; set; }


            [Display(Name = "标题")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TITLE { get; set; }


            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CONTENT { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_ZDJZ_SYBK_metadata))]
    public partial class EDU_WZXT_ZDJZ_SYBK
    {
        public EDU_WZXT_ZDJZ_SYBK()
        {
            BKMC = "";
            XSFS = "";
            XWLMID = "";
            BKLJ = "";
        }
        public class EDU_WZXT_ZDJZ_SYBK_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "板块名称")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "显示方式")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSFS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "新闻来源库")]
            public Int32 XWLYK { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "新闻栏目")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XWLMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "新闻显示数量")]
            public Int32 XWXSSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排序方式")]
            public Int32 PXFS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "板块链接")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKLJ { get; set; }


        }
    }
}

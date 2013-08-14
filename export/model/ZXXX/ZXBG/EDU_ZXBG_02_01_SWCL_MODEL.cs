namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXBG_02_01_SWCL_metadata))]
    public partial class EDU_ZXBG_02_01_SWCL
    {
        public EDU_ZXBG_02_01_SWCL()
        {
            QSRGH = "";
            CFRGH = "";
            DJRGH = "";
            SWRQ = "";
            LWDW = "";
            CLQK = "";
        }
        public class EDU_ZXBG_02_01_SWCL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "文件")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "签收人")]
            public Int32 QSRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "拆封人")]
            public Int32 CFRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登记人")]
            public Int32 DJRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "签收人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QSRGH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "拆封人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CFRGH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "登记人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRGH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "收文日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SWRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "来文单位")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LWDW { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "份数")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "处理情况")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLQK { get; set; }


            [Display(Name = "翻印份数")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal FYFS { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXBG_03_01_FWCL_metadata))]
    public partial class EDU_ZXBG_03_01_FWCL
    {
        public EDU_ZXBG_03_01_FWCL()
        {
            NGRGH = "";
            QFRGH = "";
            QFRQ = "";
            FSFW = "";
            FSFSM = "";
            DJRGH = "";
            DJRQ = "";
            GWFWRQ = "";
            CLQK = "";
            FZFSM = "";
        }
        public class EDU_ZXBG_03_01_FWCL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "文件")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "拟稿人")]
            public Int32 NGRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "签发人")]
            public Int32 QFRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登记人")]
            public Int32 DJRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打字人")]
            public Int32 DZRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "校对人")]
            public Int32 JDRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "拟稿人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NGRGH { get; set; }


            [Display(Name = "拟稿日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NGRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "签发人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QFRGH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "签发日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QFRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发送范围")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FSFW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发送方式码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FSFSM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "登记人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRGH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "登记日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发文件数")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal FWJS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "公文发文日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWFWRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "处理情况")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLQK { get; set; }


            [Display(Name = "打字人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DZRGH { get; set; }


            [Display(Name = "校对人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDRGH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "封装方式码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZFSM { get; set; }


        }
    }
}

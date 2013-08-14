namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_03_XSXWSXQK_metadata))]
    public partial class EDU_ZZJX_07_03_XSXWSXQK
    {
        public EDU_ZZJX_07_03_XSXWSXQK()
        {
            SXQSRQ = "";
            QYBH = "";
            SFGMSXZRBX = "";
            SFSDGSX = "";
            XSHJXZM = "";
        }
        public class EDU_ZZJX_07_03_XSXWSXQK_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习情况表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生信息")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业表")]
            public Int32 QYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "岗位表")]
            public Int32 GWID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "受训起始日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXQSRQ { get; set; }


            [Display(Name = "受训结束日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXJSRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "企业编号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QYBH { get; set; }


            [Display(Name = "受训岗位名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXGWMC { get; set; }


            [Display(Name = "实训导师")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXDS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否购买实习责任保险")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFGMSXZRBX { get; set; }


            [Display(Name = "保险费支付者")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BXFZFZ { get; set; }


            [Display(Name = "实习薪酬")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal SXXC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否是顶岗实习")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSDGSX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学生户籍性质码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSHJXZM { get; set; }


        }
    }
}

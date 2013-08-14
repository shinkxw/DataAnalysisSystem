namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_02_01_XSJTXX_metadata))]
    public partial class EDU_ZZXS_02_01_XSJTXX
    {
        public EDU_ZZXS_02_01_XSJTXX()
        {
            JTZZ = "";
            JTYZBM = "";
            JTLXR = "";
        }
        public class EDU_ZZXS_02_01_XSJTXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生信息数据表")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "家庭住址")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTZZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "家庭邮政编码")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTYZBM { get; set; }


            [Display(Name = "家庭电话")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTDH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "家庭联系人")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTLXR { get; set; }


            [Display(Name = "家庭电子信箱")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTDZXX { get; set; }


            [Display(Name = "家庭人口")]
            public Int32 JTRK { get; set; }


            [Display(Name = "家庭主要收入来源")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTZYSRLY { get; set; }


            [Display(Name = "家庭月收入金额")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal JTYSRJE { get; set; }


            [Display(Name = "家庭年收入金额")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal JTNSRJE { get; set; }


            [Display(Name = "离家最近火车站")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LJZJHCZ { get; set; }


        }
    }
}

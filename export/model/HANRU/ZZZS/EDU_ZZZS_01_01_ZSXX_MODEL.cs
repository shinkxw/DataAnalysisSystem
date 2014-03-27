namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZZS_01_01_ZSXX_metadata))]
    public partial class EDU_ZZZS_01_01_ZSXX
    {
        public EDU_ZZZS_01_01_ZSXX()
        {
            ZKZH = "";
            KSH = "";
            RXNY = "";
            YSWGYZM = "";
            KSFSM = "";
            BYZX = "";
            BYZXYZBM = "";
        }
        public class EDU_ZZZS_01_01_ZSXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生信息数据表")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "准考证号")]
            [StringLength(15)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZKZH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考生号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSH { get; set; }


            [Display(Name = "考区行政区划码")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KQXZQHM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "入学年月")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RXNY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "应试外国语种码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YSWGYZM { get; set; }


            [Display(Name = "报考专业码1")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKZYM1 { get; set; }


            [Display(Name = "报考专业码2")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKZYM2 { get; set; }


            [Display(Name = "报考专业码3")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKZYM3 { get; set; }


            [Display(Name = "报考专业码4")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKZYM4 { get; set; }


            [Display(Name = "报考专业码5")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKZYM5 { get; set; }


            [Display(Name = "报考专业码6")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKZYM6 { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考试方式码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSFSM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "毕业中学")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYZX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "毕业中学邮政编码")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYZXYZBM { get; set; }


            [Display(Name = "考生特长")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSTC { get; set; }


            [Display(Name = "奖励与惩处")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JLYCC { get; set; }


            [Display(Name = "竞赛获奖")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSHJ { get; set; }


            [Display(Name = "社会工作")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHGZ { get; set; }


            [Display(Name = "体检结论")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TJJL { get; set; }


            [Display(Name = "家族病史")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZBS { get; set; }


            [Display(Name = "考生既往病史")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSJWBS { get; set; }


            [Display(Name = "身高")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SG { get; set; }


            [Display(Name = "考生视力")]
            [Range(typeof(decimal), "0", "99")]
            public decimal KSSL { get; set; }


        }
    }
}

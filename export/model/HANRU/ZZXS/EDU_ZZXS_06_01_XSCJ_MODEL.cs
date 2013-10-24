namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_06_01_XSCJ_metadata))]
    public partial class EDU_ZZXS_06_01_XSCJ
    {
        public EDU_ZZXS_06_01_XSCJ()
        {
            KCH = "";
            KCMC = "";
            XQMC = "";
            CJLRRQ = "";
        }
        public class EDU_ZZXS_06_01_XSCJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程号")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分")]
            [Range(typeof(decimal), "0", "99")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学期名称")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQMC { get; set; }


            [Display(Name = "平时成绩")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal PSCJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal CJ { get; set; }


            [Display(Name = "考试性质")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSXZ { get; set; }


            [Display(Name = "任课教工")]
            public Int32 RKJGID { get; set; }


            [Display(Name = "任课教工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKJGH { get; set; }


            [Display(Name = "成绩录入教工")]
            public Int32 CJLRJGID { get; set; }


            [Display(Name = "成绩录入教工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJLRJGH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "成绩录入日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJLRRQ { get; set; }


            [Display(Name = "期中成绩")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal QZCJ { get; set; }


            [Display(Name = "期末成绩")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal QMCJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程清单")]
            public Int32 KCQDID { get; set; }


        }
    }
}

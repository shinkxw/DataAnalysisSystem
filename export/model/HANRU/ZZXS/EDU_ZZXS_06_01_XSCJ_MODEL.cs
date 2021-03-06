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
            NJID = "";
            BJID = "";
        }
        public class EDU_ZZXS_06_01_XSCJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


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
            [Range(typeof(decimal), "0", "9")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学期名称")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQMC { get; set; }


            [Display(Name = "平时成绩")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal PSCJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩")]
            [Range(typeof(decimal), "0", "9999")]
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
            [Range(typeof(decimal), "0", "9999")]
            public decimal QZCJ { get; set; }


            [Display(Name = "期末成绩")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal QMCJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程清单")]
            public Int32 KCQDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩类型")]
            public Int32 CJLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业")]
            public Int32 ZYXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核人")]
            public Int32 SHRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试")]
            public Int32 KSID { get; set; }


        }
    }
}

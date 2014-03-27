namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_02_06_ZXKSCJ_metadata))]
    public partial class EDU_ZXXS_02_06_ZXKSCJ
    {
        public EDU_ZXXS_02_06_ZXKSCJ()
        {
            XN = "";
            XQM = "";
            KSRQ = "";
            KCH = "";
            NJID = "";
            BJID = "";
        }
        public class EDU_ZXXS_02_06_ZXKSCJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试成绩表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学年（度）")]
            [StringLength(9)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XN { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学期码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考试日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "任课教师")]
            public Int32 RKJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩录入人")]
            public Int32 CJLRRID { get; set; }


            [Display(Name = "考试方式码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSFSM { get; set; }


            [Display(Name = "考试性质码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSXZM { get; set; }


            [Display(Name = "考试形式码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSXSM { get; set; }


            [Display(Name = "分数类考试成绩")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal FSLKSCJ { get; set; }


            [Display(Name = "等级类考试成绩")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJLKSCJ { get; set; }


            [Display(Name = "课程成绩")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal KCCJ { get; set; }


            [Display(Name = "课程等级成绩码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCDJCJM { get; set; }


            [Display(Name = "任课教师工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKJSGH { get; set; }


            [Display(Name = "成绩录入人号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJLRRH { get; set; }


            [Display(Name = "成绩录入日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJLRRQ { get; set; }


            [Display(Name = "成绩录入时间")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJLRSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属考试")]
            public Int32 SSKSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属考试科目")]
            public Int32 SSKSKMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "试卷")]
            public Int32 SJID { get; set; }


        }
    }
}

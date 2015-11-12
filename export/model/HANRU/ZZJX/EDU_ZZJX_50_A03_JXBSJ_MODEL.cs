namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A03_JXBSJ_metadata))]
    public partial class EDU_ZZJX_50_A03_JXBSJ
    {
        public EDU_ZZJX_50_A03_JXBSJ()
        {
            KCMC = "";
            KCJS = "";
            JXJH = "";
            NJID = "";
            NJMCLB = "";
            SKDD = "";
            BJIDLB = "";
            BJMCLB = "";
            QTJSIDLB = "";
            QTJSMCLB = "";
            SKZCIDLB = "";
            SKZCMCLB = "";
            KCSLT = "";
        }
        public class EDU_ZZJX_50_A03_JXBSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选修课程类别")]
            public Int32 XXKCLBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程介绍")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCJS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教学计划")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总课时")]
            public Int32 ZKS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前状态")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开课教师")]
            public Int32 KKJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上课时间")]
            public Int32 SKSJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "上课地点")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKDD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班级可容纳人数")]
            public Int32 BJKRNRS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最低开班人数")]
            public Int32 ZDKBRS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMCLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "其他教师ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QTJSIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "其他教师名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QTJSMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "周课时")]
            public Int32 WEEKKS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "上课周次ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKZCIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "上课周次名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKZCMCLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程缩略图")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCSLT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "点击量")]
            public Int32 DJL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上报状态")]
            public Int32 SBZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开关状态")]
            public Int32 KGZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否限选课")]
            public Int32 SFXXK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分制信息")]
            public Int32 FZXXID { get; set; }


        }
    }
}

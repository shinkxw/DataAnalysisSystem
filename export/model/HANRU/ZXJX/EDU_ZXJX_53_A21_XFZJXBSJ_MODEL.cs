namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A21_XFZJXBSJ_metadata))]
    public partial class EDU_ZXJX_53_A21_XFZJXBSJ
    {
        public EDU_ZXJX_53_A21_XFZJXBSJ()
        {
            SKDD = "";
            BZ = "";
            KCMC = "";
            SKBJIDLB = "";
            SKBJMCLB = "";
        }
        public class EDU_ZXJX_53_A21_XFZJXBSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "主任课教师")]
            public Int32 ZRKJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "辅任课教师")]
            public Int32 FRKJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程")]
            public Int32 KCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开课时间")]
            public Int32 KKSJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "上课地点")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKDD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总课时")]
            public Int32 ZKS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班级可容纳人数")]
            public Int32 BJKRNRS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最低开班人数")]
            public Int32 ZDKBRS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "授课班级ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKBJIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "授课班级名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKBJMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学班类型")]
            public Int32 JXBLX { get; set; }


        }
    }
}

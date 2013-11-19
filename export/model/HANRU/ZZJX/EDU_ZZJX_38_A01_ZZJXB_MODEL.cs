namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_38_A01_ZZJXB_metadata))]
    public partial class EDU_ZZJX_38_A01_ZZJXB
    {
        public EDU_ZZJX_38_A01_ZZJXB()
        {
            NJID = "";
            JXBMC = "";
            KCH = "";
            ZDBJ = "";
            ZDBJMC = "";
            T1NAME = "";
            T2NAME = "";
        }
        public class EDU_ZZJX_38_A01_ZZJXB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "校区")]
            public Int32 ZZXQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业")]
            public Int32 ZYXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教学班级名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXBMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "主任老师")]
            public Int32 TEACHERID1 { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "辅助老师")]
            public Int32 TEACHERID2 { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程清单")]
            public Int32 KCQDID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程号")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教室")]
            public Int32 CLASSROOM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "指定班级")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDBJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "指定班级名称")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDBJMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "人数")]
            public Int32 RS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "主任老师姓名")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String T1NAME { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "辅助老师姓名")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String T2NAME { get; set; }


        }
    }
}

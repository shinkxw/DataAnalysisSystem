namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_38_A02_ZZPKJGJL_metadata))]
    public partial class EDU_ZZJX_38_A02_ZZPKJGJL
    {
        public EDU_ZZJX_38_A02_ZZPKJGJL()
        {
            NJID = "";
            KCH = "";
            ZZBJID = "";
        }
        public class EDU_ZZJX_38_A02_ZZPKJGJL_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学班级")]
            public Int32 JXBID { get; set; }


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
            [Display(Name = "行政班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZBJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "工作日")]
            public Int32 WEEKDAY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "时段")]
            public Int32 PERIOD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "节次")]
            public Int32 SESSION { get; set; }


        }
    }
}

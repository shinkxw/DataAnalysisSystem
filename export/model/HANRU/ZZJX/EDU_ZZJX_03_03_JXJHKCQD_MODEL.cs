namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_03_03_JXJHKCQD_metadata))]
    public partial class EDU_ZZJX_03_03_JXJHKCQD
    {
        public EDU_ZZJX_03_03_JXJHKCQD()
        {
            KCH = "";
            JHBH = "";
            KCMC = "";
            KCFLM = "";
            KCSXM = "";
        }
        public class EDU_ZZJX_03_03_JXJHKCQD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学计划")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程号")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计划编号")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHBH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Display(Name = "预修课程")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YXKC { get; set; }


            [Display(Name = "是否核心（骨干）")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFHXKC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程分类码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCFLM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程属性码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCSXM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "执行学期")]
            [Range(typeof(decimal), "0", "99")]
            public decimal ZXXQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总课时")]
            public Int32 ZKS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "理论课时")]
            public Int32 LLKS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实践课时")]
            public Int32 SJKS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分认定合格线")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal XFRDHGX { get; set; }


        }
    }
}

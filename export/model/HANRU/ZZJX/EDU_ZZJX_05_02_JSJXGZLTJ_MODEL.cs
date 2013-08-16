namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_05_02_JSJXGZLTJ_metadata))]
    public partial class EDU_ZZJX_05_02_JSJXGZLTJ
    {
        public EDU_ZZJX_05_02_JSJXGZLTJ()
        {
            XQMC = "";
            JSXM = "";
        }
        public class EDU_ZZJX_05_02_JSJXGZLTJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学期名称")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教师姓名")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSXM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "任教课程门数")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal RJKCMS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "理论总学时")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal LLZXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实践总学时")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SJZXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其他总学时")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal QTZXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生总数")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal XSZS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总学分数")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal ZXFS { get; set; }


        }
    }
}

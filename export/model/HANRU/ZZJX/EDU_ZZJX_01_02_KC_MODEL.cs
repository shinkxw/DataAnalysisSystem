namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_01_02_KC_metadata))]
    public partial class EDU_ZZJX_01_02_KC
    {
        public EDU_ZZJX_01_02_KC()
        {
            KCH = "";
            KCMC = "";
            KSXS = "";
            SKFSM = "";
        }
        public class EDU_ZZJX_01_02_KC_metadata
        {
            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程号")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Display(Name = "课程英文名")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCYWM { get; set; }


            [Display(Name = "课程别名")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCBM { get; set; }


            [Display(Name = "课程介绍")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCJS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分")]
            [Range(typeof(decimal), "0", "9")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总学时")]
            [Range(typeof(decimal), "0", "99")]
            public decimal ZXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "理论学时")]
            [Range(typeof(decimal), "0", "99")]
            public decimal LLXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实践学时")]
            [Range(typeof(decimal), "0", "99")]
            public decimal SJXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其他学时")]
            [Range(typeof(decimal), "0", "99")]
            public decimal QTXS { get; set; }


            [Display(Name = "参考书目")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CKSM { get; set; }


            [Display(Name = "开课单位")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KKDW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考试形式")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSXS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "授课方式码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKFSM { get; set; }


            [Display(Name = "课程费用")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal KCFY { get; set; }


        }
    }
}

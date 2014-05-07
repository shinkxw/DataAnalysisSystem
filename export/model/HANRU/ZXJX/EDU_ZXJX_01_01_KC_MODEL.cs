namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_01_01_KC_metadata))]
    public partial class EDU_ZXJX_01_01_KC
    {
        public EDU_ZXJX_01_01_KC()
        {
            KCH = "";
            KCM = "";
            KCDJM = "";
            KCBM = "";
            SKFSM = "";
        }
        public class EDU_ZXJX_01_01_KC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Display(Name = "课程名称")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程等级码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCDJM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程别名")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCBM { get; set; }


            [Display(Name = "课程简介")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCJJ { get; set; }


            [Display(Name = "课程要求")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCYQ { get; set; }


            [Display(Name = "总学时")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZXS { get; set; }


            [Display(Name = "周学时")]
            [Range(typeof(decimal), "0", "99")]
            public decimal ZHXS { get; set; }


            [Display(Name = "自学学时")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZXXS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "授课方式码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKFSM { get; set; }


            [Display(Name = "教材编码")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JCBM { get; set; }


            [Display(Name = "参考书目")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CKSM { get; set; }


            [Display(Name = "场地限制")]
            public Int32 CDXZ { get; set; }


            [Display(Name = "是否主课")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFZK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A11_CWJBDTM_metadata))]
    public partial class EDU_ZZJG_25_A11_CWJBDTM
    {
        public EDU_ZZJG_25_A11_CWJBDTM()
        {
            JBDH = "";
            JBDW = "";
            BZY = "";
            JBRQ = "";
            ZY = "";
        }
        public class EDU_ZZJG_25_A11_CWJBDTM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "一级科目")]
            public Int32 YJKMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "二级科目")]
            public Int32 EJKMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "三级科目")]
            public Int32 SJKMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业大类")]
            public Int32 ZYDLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业小类")]
            public Int32 ZYXLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "结报单号")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBDH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "结报单位")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBDW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "报账员")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "结报日期")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "摘要")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "金额")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal JE { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A51_DFTJZD_metadata))]
    public partial class EDU_OAXT_50_A51_DFTJZD
    {
        public EDU_OAXT_50_A51_DFTJZD()
        {
            ZDMC = "";
            SJLYMC = "";
            SJLYDXCJMC = "";
            SJLYSJPCMC = "";
        }
        public class EDU_OAXT_50_A51_DFTJZD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "项目")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数据集")]
            public Int32 SJJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "字段名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "字段类型")]
            public Int32 ZDLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数据来源类型")]
            public Int32 SJLYLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数据来源")]
            public Int32 SJLYID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "数据来源名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJLYMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数据来源对象层级")]
            public Int32 SJLYDXCJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数据来源时间频次")]
            public Int32 SJLYSJPC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "数据来源对象层级名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJLYDXCJMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "数据来源时间频次名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJLYSJPCMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "对象层级缩放方式")]
            public Int32 DXCJSFFS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "时间频次缩放方式")]
            public Int32 SJPCSFFS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数值默认值")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal SZMRZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "逻辑默认值")]
            public Int32 LJMRZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "优先级")]
            public Int32 YXJ { get; set; }


        }
    }
}

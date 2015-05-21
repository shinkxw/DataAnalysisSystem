namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A52_DFTJZDJSFS_metadata))]
    public partial class EDU_OAXT_50_A52_DFTJZDJSFS
    {
        public EDU_OAXT_50_A52_DFTJZDJSFS()
        {
            JSCS = "";
        }
        public class EDU_OAXT_50_A52_DFTJZDJSFS_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "字段")]
            public Int32 ZDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "计算类型")]
            public Int32 JSLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "字段一")]
            public Int32 ZDYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "字段一数值")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal ZDYSZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "字段二")]
            public Int32 ZDEID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "字段二数值")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal ZDESZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计算参数")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSCS { get; set; }


        }
    }
}

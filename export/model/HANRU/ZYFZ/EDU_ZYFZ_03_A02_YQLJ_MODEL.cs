namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_03_A02_YQLJ_metadata))]
    public partial class EDU_ZYFZ_03_A02_YQLJ
    {
        public EDU_ZYFZ_03_A02_YQLJ()
        {
            LJMC = "";
            LJTP = "";
            LJDZ = "";
        }
        public class EDU_ZYFZ_03_A02_YQLJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "链接类型")]
            public Int32 LJLXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "链接名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LJMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "链接图片")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LJTP { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "链接地址")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LJDZ { get; set; }


        }
    }
}

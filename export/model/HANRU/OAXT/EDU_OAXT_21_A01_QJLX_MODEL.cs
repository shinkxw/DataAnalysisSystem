namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_21_A01_QJLX_metadata))]
    public partial class EDU_OAXT_21_A01_QJLX
    {
        public EDU_OAXT_21_A01_QJLX()
        {
            LXMC = "";
            BZ = "";
            JSDW = "";
        }
        public class EDU_OAXT_21_A01_QJLX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "类型名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计时单位")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSDW { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最长时间")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal ZCSJ { get; set; }


        }
    }
}

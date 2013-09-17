namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_08_A03_XXGCXPJXMLX_metadata))]
    public partial class EDU_ZXJX_08_A03_XXGCXPJXMLX
    {
        public EDU_ZXJX_08_A03_XXGCXPJXMLX()
        {
            LXMC = "";
            PJKM = "";
        }
        public class EDU_ZXJX_08_A03_XXGCXPJXMLX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "类型名称")]
            [StringLength(80)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评价科目")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJKM { get; set; }


        }
    }
}

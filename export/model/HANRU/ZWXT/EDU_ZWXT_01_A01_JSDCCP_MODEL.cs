namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_01_A01_JSDCCP_metadata))]
    public partial class EDU_ZWXT_01_A01_JSDCCP
    {
        public EDU_ZWXT_01_A01_JSDCCP()
        {
            MC = "";
            ZL = "";
            JS = "";
        }
        public class EDU_ZWXT_01_A01_JSDCCP_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "价格")]
            [Range(typeof(decimal), "0", "999")]
            public decimal JG { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "主料")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZL { get; set; }


            [Display(Name = "图片")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TP { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "介绍")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "供应数量")]
            public Int32 GYSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否开启")]
            public Int32 SFKQ { get; set; }


        }
    }
}

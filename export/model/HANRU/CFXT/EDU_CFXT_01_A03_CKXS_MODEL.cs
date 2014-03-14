namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_CFXT_01_A03_CKXS_metadata))]
    public partial class EDU_CFXT_01_A03_CKXS
    {
        public EDU_CFXT_01_A03_CKXS()
        {
            XM = "";
            ZKZH = "";
            JZDH = "";
        }
        public class EDU_CFXT_01_A03_CKXS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试")]
            public Int32 KSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "姓名")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "准考证号")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZKZH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "家长电话")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZDH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总成绩")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal ZCJ { get; set; }


        }
    }
}

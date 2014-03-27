namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_CFXT_01_A01_KM_metadata))]
    public partial class EDU_CFXT_01_A01_KM
    {
        public EDU_CFXT_01_A01_KM()
        {
            KMMC = "";
        }
        public class EDU_CFXT_01_A01_KM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "科目名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KMMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目总分")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal KMZF { get; set; }


        }
    }
}

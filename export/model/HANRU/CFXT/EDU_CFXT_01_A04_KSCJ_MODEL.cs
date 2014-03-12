namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_CFXT_01_A04_KSCJ_metadata))]
    public partial class EDU_CFXT_01_A04_KSCJ
    {
        public EDU_CFXT_01_A04_KSCJ()
        {
        }
        public class EDU_CFXT_01_A04_KSCJ_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目")]
            public Int32 KMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "参考学生")]
            public Int32 CKXSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal CJ { get; set; }


        }
    }
}

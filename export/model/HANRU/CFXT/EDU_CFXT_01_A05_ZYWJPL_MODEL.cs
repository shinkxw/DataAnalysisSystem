namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_CFXT_01_A05_ZYWJPL_metadata))]
    public partial class EDU_CFXT_01_A05_ZYWJPL
    {
        public EDU_CFXT_01_A05_ZYWJPL()
        {
            JG = "";
        }
        public class EDU_CFXT_01_A05_ZYWJPL_metadata
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
            [Display(Name = "划档类型")]
            public Int32 PL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "划档最大值")]
            public Int32 PLRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "划档最小值")]
            public Int32 PLSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "结果")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JG { get; set; }


        }
    }
}

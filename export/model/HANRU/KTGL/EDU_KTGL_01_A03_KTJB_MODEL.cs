namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_KTGL_01_A03_KTJB_metadata))]
    public partial class EDU_KTGL_01_A03_KTJB
    {
        public EDU_KTGL_01_A03_KTJB()
        {
            JBMC = "";
        }
        public class EDU_KTGL_01_A03_KTJB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "级别名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBMC { get; set; }


        }
    }
}

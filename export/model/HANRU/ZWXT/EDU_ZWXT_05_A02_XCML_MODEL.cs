namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_05_A02_XCML_metadata))]
    public partial class EDU_ZWXT_05_A02_XCML
    {
        public EDU_ZWXT_05_A02_XCML()
        {
            MLMC = "";
        }
        public class EDU_ZWXT_05_A02_XCML_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "目录名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MLMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "父目录")]
            public Int32 FMLID { get; set; }


        }
    }
}

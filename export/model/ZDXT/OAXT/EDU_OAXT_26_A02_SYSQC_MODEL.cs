namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_26_A02_SYSQC_metadata))]
    public partial class EDU_OAXT_26_A02_SYSQC
    {
        public EDU_OAXT_26_A02_SYSQC()
        {
            QCMC = "";
        }
        public class EDU_OAXT_26_A02_SYSQC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "器材名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QCMC { get; set; }


        }
    }
}

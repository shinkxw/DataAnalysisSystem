namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_19_A01_BWSJ_metadata))]
    public partial class EDU_ZZXS_19_A01_BWSJ
    {
        public EDU_ZZXS_19_A01_BWSJ()
        {
            BWMC = "";
        }
        public class EDU_ZZXS_19_A01_BWSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班委名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BWMC { get; set; }


        }
    }
}

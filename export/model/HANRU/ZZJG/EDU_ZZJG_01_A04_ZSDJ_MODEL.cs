namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_01_A04_ZSDJ_metadata))]
    public partial class EDU_ZZJG_01_A04_ZSDJ
    {
        public EDU_ZZJG_01_A04_ZSDJ()
        {
        }
        public class EDU_ZZJG_01_A04_ZSDJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "等级名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJMC { get; set; }


        }
    }
}

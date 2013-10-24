namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_15_A01_ZYPGLX_metadata))]
    public partial class EDU_ZZJG_15_A01_ZYPGLX
    {
        public EDU_ZZJG_15_A01_ZYPGLX()
        {
            XCLXMC = "";
        }
        public class EDU_ZZJG_15_A01_ZYPGLX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XCLXMC { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_14_A01_BKLX_metadata))]
    public partial class EDU_ZZJG_14_A01_BKLX
    {
        public EDU_ZZJG_14_A01_BKLX()
        {
            BKLXMC = "";
        }
        public class EDU_ZZJG_14_A01_BKLX_metadata
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
            public String BKLXMC { get; set; }


        }
    }
}

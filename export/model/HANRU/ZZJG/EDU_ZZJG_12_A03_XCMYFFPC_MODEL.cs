namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_12_A03_XCMYFFPC_metadata))]
    public partial class EDU_ZZJG_12_A03_XCMYFFPC
    {
        public EDU_ZZJG_12_A03_XCMYFFPC()
        {
            PCMC = "";
        }
        public class EDU_ZZJG_12_A03_XCMYFFPC_metadata
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
            public String PCMC { get; set; }


        }
    }
}

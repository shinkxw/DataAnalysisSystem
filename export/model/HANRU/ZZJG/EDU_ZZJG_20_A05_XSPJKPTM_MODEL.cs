namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_20_A05_XSPJKPTM_metadata))]
    public partial class EDU_ZZJG_20_A05_XSPJKPTM
    {
        public EDU_ZZJG_20_A05_XSPJKPTM()
        {
        }
        public class EDU_ZZJG_20_A05_XSPJKPTM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "")]
            public Int32 KPID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 TMID { get; set; }


        }
    }
}

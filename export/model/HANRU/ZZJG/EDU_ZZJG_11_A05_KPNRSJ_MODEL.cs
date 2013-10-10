namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A05_KPNRSJ_metadata))]
    public partial class EDU_ZZJG_11_A05_KPNRSJ
    {
        public EDU_ZZJG_11_A05_KPNRSJ()
        {
            KPNRMC = "";
        }
        public class EDU_ZZJG_11_A05_KPNRSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KPNRMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������������")]
            public Int32 KPNRLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 KPZTID { get; set; }


        }
    }
}

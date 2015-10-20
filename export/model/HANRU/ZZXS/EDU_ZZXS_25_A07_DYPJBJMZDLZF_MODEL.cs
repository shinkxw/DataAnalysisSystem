namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_25_A07_DYPJBJMZDLZF_metadata))]
    public partial class EDU_ZZXS_25_A07_DYPJBJMZDLZF
    {
        public EDU_ZZXS_25_A07_DYPJBJMZDLZF()
        {
        }
        public class EDU_ZZXS_25_A07_DYPJBJMZDLZF_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ÿ�ܻ���")]
            public Int32 MZHZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 DLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܷ�")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal ZF { get; set; }


        }
    }
}

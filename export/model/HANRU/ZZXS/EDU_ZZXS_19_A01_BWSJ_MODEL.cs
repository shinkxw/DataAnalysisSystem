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
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ί����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BWMC { get; set; }


        }
    }
}

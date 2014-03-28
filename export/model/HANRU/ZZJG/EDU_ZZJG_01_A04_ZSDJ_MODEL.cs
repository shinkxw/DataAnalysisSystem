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
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "�ȼ�����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJMC { get; set; }


        }
    }
}

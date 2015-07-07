namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A02_CWEJFLKM_metadata))]
    public partial class EDU_ZZJG_25_A02_CWEJFLKM
    {
        public EDU_ZZJG_25_A02_CWEJFLKM()
        {
            EJKMDM = "";
            EJKMMC = "";
        }
        public class EDU_ZZJG_25_A02_CWEJFLKM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "һ����Ŀ")]
            public Int32 YJKMID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Ŀ����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String EJKMDM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Ŀ����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String EJKMMC { get; set; }


        }
    }
}

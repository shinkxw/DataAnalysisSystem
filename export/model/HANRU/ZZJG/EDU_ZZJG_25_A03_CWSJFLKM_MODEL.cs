namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A03_CWSJFLKM_metadata))]
    public partial class EDU_ZZJG_25_A03_CWSJFLKM
    {
        public EDU_ZZJG_25_A03_CWSJFLKM()
        {
            SJKMDM = "";
            SJKMMC = "";
        }
        public class EDU_ZZJG_25_A03_CWSJFLKM_metadata
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


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 EJKMID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Ŀ����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJKMDM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Ŀ����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJKMMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�ϼƴ�ӡ")]
            public Int32 SFHJDY { get; set; }


        }
    }
}

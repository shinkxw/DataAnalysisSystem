namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A01_CWYJFLKM_metadata))]
    public partial class EDU_ZZJG_25_A01_CWYJFLKM
    {
        public EDU_ZZJG_25_A01_CWYJFLKM()
        {
            YJKMDM = "";
            YJKMMC = "";
        }
        public class EDU_ZZJG_25_A01_CWYJFLKM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "һ����Ŀ����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YJKMDM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "һ����Ŀ����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YJKMMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ��̯")]
            public Int32 SFFT { get; set; }


        }
    }
}

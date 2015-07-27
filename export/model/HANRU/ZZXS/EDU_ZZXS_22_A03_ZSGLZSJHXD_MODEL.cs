namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_22_A03_ZSGLZSJHXD_metadata))]
    public partial class EDU_ZZXS_22_A03_ZSGLZSJHXD
    {
        public EDU_ZZXS_22_A03_ZSGLZSJHXD()
        {
            ZYMC = "";
            ZYJS = "";
        }
        public class EDU_ZZXS_22_A03_ZSGLZSJHXD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ƻ�")]
            public Int32 JHID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "רҵ����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵ")]
            public Int32 ZYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 ZSRS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "רҵ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYJS { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZZS_03_01_KSKMCJ_metadata))]
    public partial class EDU_ZZZS_03_01_KSKMCJ
    {
        public EDU_ZZZS_03_01_KSKMCJ()
        {
            KMM = "";
        }
        public class EDU_ZZZS_03_01_KSKMCJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ��")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KMM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�п�����")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal ZKFS { get; set; }


        }
    }
}

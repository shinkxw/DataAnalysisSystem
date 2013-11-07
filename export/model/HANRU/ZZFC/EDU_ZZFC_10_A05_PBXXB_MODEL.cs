namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZFC_10_A05_PBXXB_metadata))]
    public partial class EDU_ZZFC_10_A05_PBXXB
    {
        public EDU_ZZFC_10_A05_PBXXB()
        {
            XXMC = "";
        }
        public class EDU_ZZFC_10_A05_PBXXB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѡ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ������")]
            public Int32 XXLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal FZ { get; set; }


        }
    }
}

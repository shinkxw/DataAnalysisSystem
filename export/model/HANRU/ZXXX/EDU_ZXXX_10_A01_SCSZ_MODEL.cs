namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXX_10_A01_SCSZ_metadata))]
    public partial class EDU_ZXXX_10_A01_SCSZ
    {
        public EDU_ZXXX_10_A01_SCSZ()
        {
            MC = "";
        }
        public class EDU_ZXXX_10_A01_SCSZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�۸�")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal JG { get; set; }


        }
    }
}

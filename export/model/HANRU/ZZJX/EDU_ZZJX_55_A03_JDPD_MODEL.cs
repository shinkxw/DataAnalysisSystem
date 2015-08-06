namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A03_JDPD_metadata))]
    public partial class EDU_ZZJX_55_A03_JDPD
    {
        public EDU_ZZJX_55_A03_JDPD()
        {
            PDMC = "";
        }
        public class EDU_ZZJX_55_A03_JDPD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PDMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            [Range(typeof(decimal), "0", "999")]
            public decimal JCJD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FSSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FSXX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 LX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���㹫ʽ")]
            public Int32 JSGS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}

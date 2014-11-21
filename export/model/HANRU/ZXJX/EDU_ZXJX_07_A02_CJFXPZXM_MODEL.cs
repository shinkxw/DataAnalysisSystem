namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_07_A02_CJFXPZXM_metadata))]
    public partial class EDU_ZXJX_07_A02_CJFXPZXM
    {
        public EDU_ZXJX_07_A02_CJFXPZXM()
        {
            DCMC = "";
        }
        public class EDU_ZXJX_07_A02_CJFXPZXM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 SSPZID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DCMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal XX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "PֵȨ��")]
            public Int32 PZQZ { get; set; }


        }
    }
}

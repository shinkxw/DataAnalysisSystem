namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_16_JSD_metadata))]
    public partial class EDU_ZDGL_16_JSD
    {
        public EDU_ZDGL_16_JSD()
        {
            JSDH = "";
            SXRQ = DateTime.Now;
        }
        public class EDU_ZDGL_16_JSD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���յ���")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSDH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���޵�λ")]
            public Int32 SXDWID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public DateTime SXRQ { get; set; }


        }
    }
}

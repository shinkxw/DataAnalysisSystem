namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_20_FHD_metadata))]
    public partial class EDU_ZDGL_20_FHD
    {
        public EDU_ZDGL_20_FHD()
        {
            FHDH = "";
            FHRQ = DateTime.Now;
        }
        public class EDU_ZDGL_20_FHD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ص���")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FHDH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public DateTime FHRQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ص�λ")]
            public Int32 FHDWID { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_18_JFD_metadata))]
    public partial class EDU_ZDGL_18_JFD
    {
        public EDU_ZDGL_18_JFD()
        {
            JFDH = "";
            JFRQ = DateTime.Now;
        }
        public class EDU_ZDGL_18_JFD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JFDH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ά����")]
            public Int32 WXSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public DateTime JFRQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���޵�λ")]
            public Int32 SXDWID { get; set; }


        }
    }
}

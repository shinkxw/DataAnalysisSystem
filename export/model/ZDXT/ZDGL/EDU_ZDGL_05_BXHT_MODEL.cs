namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_05_BXHT_metadata))]
    public partial class EDU_ZDGL_05_BXHT
    {
        public EDU_ZDGL_05_BXHT()
        {
            HTMC = "";
        }
        public class EDU_ZDGL_05_BXHT_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ͬ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HTMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ά��ʱ��")]
            public Int32 WXSX { get; set; }


        }
    }
}

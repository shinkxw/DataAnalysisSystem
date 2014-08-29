namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_23_SXDSJ_metadata))]
    public partial class EDU_ZDGL_23_SXDSJ
    {
        public EDU_ZDGL_23_SXDSJ()
        {
            WB = "";
        }
        public class EDU_ZDGL_23_SXDSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���޵�")]
            public Int32 SXDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�豸�ͺ�")]
            public Int32 SBXHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���޵���Ŀ")]
            public Int32 SXDXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 SL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ı�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WB { get; set; }


        }
    }
}

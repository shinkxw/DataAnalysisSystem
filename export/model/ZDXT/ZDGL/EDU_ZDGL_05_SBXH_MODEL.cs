namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_05_SBXH_metadata))]
    public partial class EDU_ZDGL_05_SBXH
    {
        public EDU_ZDGL_05_SBXH()
        {
            XX = "";
            PY = "";
            MS = "";
        }
        public class EDU_ZDGL_05_SBXH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ͺ�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 LXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 SCCJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ƴ��")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�۸�")]
            public float JG { get; set; }


        }
    }
}

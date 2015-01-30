namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A05_DSZXSMB_metadata))]
    public partial class EDU_ZXXS_57_A05_DSZXSMB
    {
        public EDU_ZXXS_57_A05_DSZXSMB()
        {
            MC = "";
            NR = "";
        }
        public class EDU_ZXXS_57_A05_DSZXSMB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ģ������")]
            public Int32 MBLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 NRLX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�·�")]
            public Int32 YF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "λ��")]
            public Int32 WZ { get; set; }


        }
    }
}

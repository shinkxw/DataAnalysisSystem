namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_08_A02_XXGCXPJJG_metadata))]
    public partial class EDU_ZXJX_08_A02_XXGCXPJJG
    {
        public EDU_ZXJX_08_A02_XXGCXPJJG()
        {
            SSKCH = "";
        }
        public class EDU_ZXJX_08_A02_XXGCXPJJG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 PZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "99999999999999999")]
            public decimal FS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "У����")]
            public Int32 XLZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����γ̺�")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSKCH { get; set; }


        }
    }
}

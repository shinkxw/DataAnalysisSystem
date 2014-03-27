namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_01_A01_JSDCCP_metadata))]
    public partial class EDU_ZWXT_01_A01_JSDCCP
    {
        public EDU_ZWXT_01_A01_JSDCCP()
        {
            MC = "";
            ZL = "";
            JS = "";
        }
        public class EDU_ZWXT_01_A01_JSDCCP_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�۸�")]
            [Range(typeof(decimal), "0", "999")]
            public decimal JG { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZL { get; set; }


            [Display(Name = "ͼƬ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TP { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ӧ����")]
            public Int32 GYSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���")]
            public Int32 SFKQ { get; set; }


        }
    }
}

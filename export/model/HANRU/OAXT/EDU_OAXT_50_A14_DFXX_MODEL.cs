namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A14_DFXX_metadata))]
    public partial class EDU_OAXT_50_A14_DFXX
    {
        public EDU_OAXT_50_A14_DFXX()
        {
            XXMC = "";
        }
        public class EDU_OAXT_50_A14_DFXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ַ�ʽ")]
            public Int32 DFFSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѡ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ���ֵ")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal XXFZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}

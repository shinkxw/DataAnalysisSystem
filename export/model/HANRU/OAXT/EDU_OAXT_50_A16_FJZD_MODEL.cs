namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A16_FJZD_metadata))]
    public partial class EDU_OAXT_50_A16_FJZD
    {
        public EDU_OAXT_50_A16_FJZD()
        {
            ZDMC = "";
            MRZ = "";
        }
        public class EDU_OAXT_50_A16_FJZD_metadata
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
            [Display(Name = "��ֽڵ�")]
            public Int32 DFJDID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ֶ�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ĭ��ֵ")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MRZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}

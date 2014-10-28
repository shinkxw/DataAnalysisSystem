namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_56_A21_XSWHSZPJXM_metadata))]
    public partial class EDU_ZXXS_56_A21_XSWHSZPJXM
    {
        public EDU_ZXXS_56_A21_XSWHSZPJXM()
        {
            KCMC = "";
            PJXM = "";
        }
        public class EDU_ZXXS_56_A21_XSWHSZPJXM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Ŀ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJXM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɼ���ַ�ʽ")]
            public Int32 CJDFFSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���۴�ַ�ʽ")]
            public Int32 PJDFFSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


        }
    }
}

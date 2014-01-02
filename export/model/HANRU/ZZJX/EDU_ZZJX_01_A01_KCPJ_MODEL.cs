namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_01_A01_KCPJ_metadata))]
    public partial class EDU_ZZJX_01_A01_KCPJ
    {
        public EDU_ZZJX_01_A01_KCPJ()
        {
            PJR = "";
            PJSJ = DateTime.Now;
            PJNR = "";
            HF = "";
        }
        public class EDU_ZZJX_01_A01_KCPJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 PJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����")]
            public Int32 KXH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime PJSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJNR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ظ�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HF { get; set; }


        }
    }
}

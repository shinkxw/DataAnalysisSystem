namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A13_YDPDZDPZ_metadata))]
    public partial class EDU_ZZJX_22_A13_YDPDZDPZ
    {
        public EDU_ZZJX_22_A13_YDPDZDPZ()
        {
            ZDMC = "";
        }
        public class EDU_ZZJX_22_A13_YDPDZDPZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�ʹ��")]
            public Int32 SFSY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������ܷ���д")]
            public Int32 BZRNFTX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵѵ���ܷ���д")]
            public Int32 SXCNFTX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}

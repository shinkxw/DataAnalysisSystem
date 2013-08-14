namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A01_XXSXJH_metadata))]
    public partial class EDU_ZZJX_07_A01_XXSXJH
    {
        public EDU_ZZJX_07_A01_XXSXJH()
        {
            JHBT = "";
            NJ = "";
            SFSX = "";
        }
        public class EDU_ZZJX_07_A01_XXSXJH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ�ƻ�")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ƻ�����")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHBT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ʽ")]
            public Int32 BGXS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ƻ��Ƿ���Ч")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSX { get; set; }


        }
    }
}

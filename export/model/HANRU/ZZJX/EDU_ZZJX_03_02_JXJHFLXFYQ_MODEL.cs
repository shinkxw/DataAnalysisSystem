namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_03_02_JXJHFLXFYQ_metadata))]
    public partial class EDU_ZZJX_03_02_JXJHFLXFYQ
    {
        public EDU_ZZJX_03_02_JXJHFLXFYQ()
        {
            KCFLM = "";
            JHBH = "";
        }
        public class EDU_ZZJX_03_02_JXJHFLXFYQ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̷�����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCFLM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��Ҫ��")]
            [Range(typeof(decimal), "0", "99")]
            public decimal XFYQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ƻ����")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHBH { get; set; }


        }
    }
}

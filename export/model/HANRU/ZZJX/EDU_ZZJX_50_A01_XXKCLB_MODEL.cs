namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A01_XXKCLB_metadata))]
    public partial class EDU_ZZJX_50_A01_XXKCLB
    {
        public EDU_ZZJX_50_A01_XXKCLB()
        {
            LBMC = "";
            JJ = "";
        }
        public class EDU_ZZJX_50_A01_XXKCLB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LBMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ͬʱѡ������")]
            public Int32 ZGTSXKSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�����ͬ���γ̶�ѡ")]
            public Int32 SFYXTMKCDX { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_24_A01_KQSJD_metadata))]
    public partial class EDU_ZZJG_24_A01_KQSJD
    {
        public EDU_ZZJG_24_A01_KQSJD()
        {
            SJDMC = "";
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            KQDX = "";
        }
        public class EDU_ZZJG_24_A01_KQSJD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʱ�������")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJDMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 KQR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼʱ��")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ڶ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KQDX { get; set; }


        }
    }
}

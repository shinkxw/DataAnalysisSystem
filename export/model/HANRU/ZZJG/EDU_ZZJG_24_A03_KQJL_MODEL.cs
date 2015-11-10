namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_24_A03_KQJL_metadata))]
    public partial class EDU_ZZJG_24_A03_KQJL
    {
        public EDU_ZZJG_24_A03_KQJL()
        {
            KQSJ = DateTime.Now;
        }
        public class EDU_ZZJG_24_A03_KQJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�̹�")]
            public Int32 JGID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime KQSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 JCH { get; set; }


        }
    }
}

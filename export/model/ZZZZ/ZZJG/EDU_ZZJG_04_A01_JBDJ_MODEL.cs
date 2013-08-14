namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_04_A01_JBDJ_metadata))]
    public partial class EDU_ZZJG_04_A01_JBDJ
    {
        public EDU_ZZJG_04_A01_JBDJ()
        {
        }
        public class EDU_ZZJG_04_A01_JBDJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ӱ�ǼǱ�")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ְ��")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼʱ��")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ӱ�����")]
            public Int32 JBLX { get; set; }


        }
    }
}

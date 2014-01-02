namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_13_A02_KS_metadata))]
    public partial class EDU_ZZJG_13_A02_KS
    {
        public EDU_ZZJG_13_A02_KS()
        {
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZJG_13_A02_KS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�̹�������Ϣ")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼʱ��")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʱ����")]
            public Int32 KSLXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 SL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}

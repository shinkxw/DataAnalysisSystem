namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_17_A05_DZBCYXX_metadata))]
    public partial class EDU_ZZJG_17_A05_DZBCYXX
    {
        public EDU_ZZJG_17_A05_DZBCYXX()
        {
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZJG_17_A05_DZBCYXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ա��Ϣ")]
            public Int32 DYXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�̹�������Ϣ")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��֧��")]
            public Int32 DZBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��֧��ְλ")]
            public Int32 DZBZWID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ӽ�ʦ")]
            public Int32 TJJSID { get; set; }


            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}

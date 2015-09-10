namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A15_JXBPFBL_metadata))]
    public partial class EDU_ZZJX_55_A15_JXBPFBL
    {
        public EDU_ZZJX_55_A15_JXBPFBL()
        {
        }
        public class EDU_ZZJX_55_A15_JXBPFBL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ�ƻ���")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ�������Ŀ��")]
            public Int32 KCPFXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "999")]
            public decimal BL { get; set; }


        }
    }
}

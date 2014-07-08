namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_03_XNJS_metadata))]
    public partial class EDU_ELE_03_XNJS
    {
        public EDU_ELE_03_XNJS()
        {
            JLSJ = DateTime.Now;
        }
        public class EDU_ELE_03_XNJS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��¼ʱ��")]
            public DateTime JLSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "CPUʹ����")]
            public float CPUSYL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ڴ�ʹ����")]
            public float NCSYL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���̶�ȡ�ٶ�")]
            public float CPDQSD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����д���ٶ�")]
            public float CPXRSD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 ZXRS { get; set; }


        }
    }
}

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
            JLSJ = new DateTime(1900, 1, 1);
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
            [Range(typeof(decimal), "0", "99999")]
            public decimal CPUSYL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ڴ�ʹ����")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal NCSYL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 ZXRS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 QQS { get; set; }


        }
    }
}

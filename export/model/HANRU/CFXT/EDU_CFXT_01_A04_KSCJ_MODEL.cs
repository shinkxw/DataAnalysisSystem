namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_CFXT_01_A04_KSCJ_metadata))]
    public partial class EDU_CFXT_01_A04_KSCJ
    {
        public EDU_CFXT_01_A04_KSCJ()
        {
        }
        public class EDU_CFXT_01_A04_KSCJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 KSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 KMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ο�ѧ��")]
            public Int32 CKXSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɼ�")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal CJ { get; set; }


        }
    }
}

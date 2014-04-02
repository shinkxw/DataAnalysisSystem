namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A13_SSHZXSCS_metadata))]
    public partial class EDU_ZXXS_51_A13_SSHZXSCS
    {
        public EDU_ZXXS_51_A13_SSHZXSCS()
        {
        }
        public class EDU_ZXXS_51_A13_SSHZXSCS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���˻���")]
            public Int32 KHHZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ԣ")]
            public Int32 GY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "¥��")]
            public Int32 LC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 SS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�༶")]
            public Int32 BJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            public Int32 FZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ȵ�")]
            public Int32 DD { get; set; }


        }
    }
}

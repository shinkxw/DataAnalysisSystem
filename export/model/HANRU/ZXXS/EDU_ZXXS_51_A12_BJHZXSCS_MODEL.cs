namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A12_BJHZXSCS_metadata))]
    public partial class EDU_ZXXS_51_A12_BJHZXSCS
    {
        public EDU_ZXXS_51_A12_BJHZXSCS()
        {
        }
        public class EDU_ZXXS_51_A12_BJHZXSCS_metadata
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
            [Display(Name = "�꼶")]
            public Int32 NJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�༶")]
            public Int32 BJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 BZR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            public Int32 FZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ȵ�")]
            public Int32 DD { get; set; }


        }
    }
}

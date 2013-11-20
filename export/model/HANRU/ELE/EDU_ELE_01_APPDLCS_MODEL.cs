namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_APPDLCS_metadata))]
    public partial class EDU_ELE_01_APPDLCS
    {
        public EDU_ELE_01_APPDLCS()
        {
        }
        public class EDU_ELE_01_APPDLCS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ���û�")]
            public Int32 APPUSERID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 CSMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ֵ")]
            public Int32 CSZ { get; set; }


        }
    }
}

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
            CSMC = "";
            CSZ = "";
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CSMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ֵ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CSZ { get; set; }


        }
    }
}

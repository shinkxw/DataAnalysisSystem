namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A13_WXJL_metadata))]
    public partial class EDU_OAXT_15_A13_WXJL
    {
        public EDU_OAXT_15_A13_WXJL()
        {
            BZ = "";
        }
        public class EDU_OAXT_15_A13_WXJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ʒ")]
            public Int32 WPID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ά��״̬")]
            public Int32 WXZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_06_BM_metadata))]
    public partial class EDU_ZDGL_06_BM
    {
        public EDU_ZDGL_06_BM()
        {
            BMMC = "";
            BMYHLB = "";
            SXDWLB = "";
        }
        public class EDU_ZDGL_06_BM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BMMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����û��б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BMYHLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���޵�λ�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXDWLB { get; set; }


        }
    }
}

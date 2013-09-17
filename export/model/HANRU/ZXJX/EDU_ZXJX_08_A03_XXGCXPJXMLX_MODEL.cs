namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_08_A03_XXGCXPJXMLX_metadata))]
    public partial class EDU_ZXJX_08_A03_XXGCXPJXMLX
    {
        public EDU_ZXJX_08_A03_XXGCXPJXMLX()
        {
            LXMC = "";
            PJKM = "";
        }
        public class EDU_ZXJX_08_A03_XXGCXPJXMLX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(80)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ۿ�Ŀ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJKM { get; set; }


        }
    }
}

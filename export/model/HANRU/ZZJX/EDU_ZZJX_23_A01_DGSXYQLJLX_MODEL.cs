namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_23_A01_DGSXYQLJLX_metadata))]
    public partial class EDU_ZZJX_23_A01_DGSXYQLJLX
    {
        public EDU_ZZJX_23_A01_DGSXYQLJLX()
        {
            NAME = "";
        }
        public class EDU_ZZJX_23_A01_DGSXYQLJLX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


        }
    }
}

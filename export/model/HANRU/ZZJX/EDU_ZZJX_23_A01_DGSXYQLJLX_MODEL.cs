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
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "类型名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


        }
    }
}

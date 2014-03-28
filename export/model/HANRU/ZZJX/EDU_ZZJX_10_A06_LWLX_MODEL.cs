namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_10_A06_LWLX_metadata))]
    public partial class EDU_ZZJX_10_A06_LWLX
    {
        public EDU_ZZJX_10_A06_LWLX()
        {
        }
        public class EDU_ZZJX_10_A06_LWLX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "��������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


        }
    }
}

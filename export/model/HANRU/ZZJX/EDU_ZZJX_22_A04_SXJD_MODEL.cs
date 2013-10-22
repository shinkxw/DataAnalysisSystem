namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A04_SXJD_metadata))]
    public partial class EDU_ZZJX_22_A04_SXJD
    {
        public EDU_ZZJX_22_A04_SXJD()
        {
        }
        public class EDU_ZZJX_22_A04_SXJD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ����")]
            public Int32 SFHZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 JDRID { get; set; }


        }
    }
}

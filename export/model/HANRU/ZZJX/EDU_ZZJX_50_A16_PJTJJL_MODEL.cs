namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A16_PJTJJL_metadata))]
    public partial class EDU_ZZJX_50_A16_PJTJJL
    {
        public EDU_ZZJX_50_A16_PJTJJL()
        {
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZJX_50_A16_PJTJJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ύʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}

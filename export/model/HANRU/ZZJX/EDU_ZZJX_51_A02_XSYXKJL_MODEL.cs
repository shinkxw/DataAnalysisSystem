namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_51_A02_XSYXKJL_metadata))]
    public partial class EDU_ZZJX_51_A02_XSYXKJL
    {
        public EDU_ZZJX_51_A02_XSYXKJL()
        {
            XKSJ = DateTime.Now;
        }
        public class EDU_ZZJX_51_A02_XSYXKJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ�")]
            public Int32 KCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ��ʱ��")]
            public DateTime XKSJ { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_22_A07_PHZYCPTJJL_metadata))]
    public partial class EDU_ZZJG_22_A07_PHZYCPTJJL
    {
        public EDU_ZZJG_22_A07_PHZYCPTJJL()
        {
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZJG_22_A07_PHZYCPTJJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���۽�ʦ")]
            public Int32 PJJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ύʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}

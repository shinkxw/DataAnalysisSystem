namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_55_A02_SFJG_metadata))]
    public partial class EDU_ZXJX_55_A02_SFJG
    {
        public EDU_ZXJX_55_A02_SFJG()
        {
        }
        public class EDU_ZXJX_55_A02_SFJG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�շ���Ŀ")]
            public Int32 SFXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵ�ɽ��")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal SJJE { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɷ�״̬")]
            public Int32 JFZT { get; set; }


        }
    }
}

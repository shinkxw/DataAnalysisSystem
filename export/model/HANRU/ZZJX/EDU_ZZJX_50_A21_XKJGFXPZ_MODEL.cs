namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A21_XKJGFXPZ_metadata))]
    public partial class EDU_ZZJX_50_A21_XKJGFXPZ
    {
        public EDU_ZZJX_50_A21_XKJGFXPZ()
        {
        }
        public class EDU_ZZJX_50_A21_XKJGFXPZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 XQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ����ѡ��")]
            public Int32 SFBXXK { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ����������")]
            public Int32 XKSLSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ����������")]
            public Int32 XKSLXX { get; set; }


        }
    }
}

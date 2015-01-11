namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A12_XFZBXKCQD_metadata))]
    public partial class EDU_ZXJX_53_A12_XFZBXKCQD
    {
        public EDU_ZXJX_53_A12_XFZBXKCQD()
        {
        }
        public class EDU_ZXJX_53_A12_XFZBXKCQD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ�ƻ�")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ�")]
            public Int32 KCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            [Range(typeof(decimal), "0", "99")]
            public decimal XF { get; set; }


        }
    }
}

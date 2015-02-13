namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A42_XFZDYCSCJ_metadata))]
    public partial class EDU_ZXJX_53_A42_XFZDYCSCJ
    {
        public EDU_ZXJX_53_A42_XFZDYCSCJ()
        {
        }
        public class EDU_ZXJX_53_A42_XFZDYCSCJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ԫ����")]
            public Int32 DYCSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɼ�")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal CJ { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A23_XFZECXKXS_metadata))]
    public partial class EDU_ZXJX_53_A23_XFZECXKXS
    {
        public EDU_ZXJX_53_A23_XFZECXKXS()
        {
        }
        public class EDU_ZXJX_53_A23_XFZECXKXS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ��")]
            public Int32 XKID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


        }
    }
}

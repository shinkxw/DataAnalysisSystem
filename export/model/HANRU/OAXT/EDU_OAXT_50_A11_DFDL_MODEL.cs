namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A11_DFDL_metadata))]
    public partial class EDU_OAXT_50_A11_DFDL
    {
        public EDU_OAXT_50_A11_DFDL()
        {
        }
        public class EDU_OAXT_50_A11_DFDL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���ڵ�")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֶ�����")]
            public Int32 DFDXZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���Ҫ���")]
            public Int32 SFXYSH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��˷�ʽ")]
            public Int32 SHFS { get; set; }


        }
    }
}

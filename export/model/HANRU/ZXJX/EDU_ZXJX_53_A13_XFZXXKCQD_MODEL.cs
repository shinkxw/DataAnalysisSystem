namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A13_XFZXXKCQD_metadata))]
    public partial class EDU_ZXJX_53_A13_XFZXXKCQD
    {
        public EDU_ZXJX_53_A13_XFZXXKCQD()
        {
        }
        public class EDU_ZXJX_53_A13_XFZXXKCQD_metadata
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
            [Display(Name = "�γ�ID�б�")]
            public Int32 KCIDLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ������б�")]
            public Int32 KCMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѡ����")]
            public Int32 XXMS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            [Range(typeof(decimal), "0", "99")]
            public decimal XF { get; set; }


        }
    }
}

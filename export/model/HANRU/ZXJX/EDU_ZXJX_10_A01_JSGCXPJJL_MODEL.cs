namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_10_A01_JSGCXPJJL_metadata))]
    public partial class EDU_ZXJX_10_A01_JSGCXPJJL
    {
        public EDU_ZXJX_10_A01_JSGCXPJJL()
        {
            LRSJ = DateTime.Now;
        }
        public class EDU_ZXJX_10_A01_JSGCXPJJL_metadata
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
            [Display(Name = "������")]
            public Int32 XLZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 PJXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���˷�")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal KHF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɼ�")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal FLM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "¼��ʱ��")]
            public DateTime LRSJ { get; set; }


        }
    }
}

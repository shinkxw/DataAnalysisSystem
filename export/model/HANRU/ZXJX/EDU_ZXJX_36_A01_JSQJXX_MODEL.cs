namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_36_A01_JSQJXX_metadata))]
    public partial class EDU_ZXJX_36_A01_JSQJXX
    {
        public EDU_ZXJX_36_A01_JSQJXX()
        {
            QJKSSJ = DateTime.Now;
            QJJSSJ = DateTime.Now;
        }
        public class EDU_ZXJX_36_A01_JSQJXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ٽ�ʦ")]
            public Int32 QJJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ٿ�ʼʱ��")]
            public DateTime QJKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ٽ���ʱ��")]
            public DateTime QJJSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 CLZT { get; set; }


        }
    }
}

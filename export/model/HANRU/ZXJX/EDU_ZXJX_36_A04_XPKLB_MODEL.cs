namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_36_A04_XPKLB_metadata))]
    public partial class EDU_ZXJX_36_A04_XPKLB
    {
        public EDU_ZXJX_36_A04_XPKLB()
        {
            RQ = DateTime.Now;
            PKSJ = DateTime.Now;
            QRSJ = DateTime.Now;
        }
        public class EDU_ZXJX_36_A04_XPKLB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ�����Ϣ��")]
            public Int32 JSQJXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ſν����¼��")]
            public Int32 PKJGJLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public DateTime RQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 CLZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ſν�ʦ")]
            public Int32 XPKJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƽ���ʦ")]
            public Int32 TJJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ν�ʦ")]
            public Int32 DKJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 DKLXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ſ�ʱ��")]
            public DateTime PKSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ȷ��ʱ��")]
            public DateTime QRSJ { get; set; }


        }
    }
}

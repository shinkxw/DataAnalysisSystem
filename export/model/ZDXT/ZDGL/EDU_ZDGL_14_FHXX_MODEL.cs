namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_14_FHXX_metadata))]
    public partial class EDU_ZDGL_14_FHXX
    {
        public EDU_ZDGL_14_FHXX()
        {
            FHRQ = DateTime.Now;
        }
        public class EDU_ZDGL_14_FHXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 FHPCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ּ���ϸ")]
            public Int32 FJXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 JCFW { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 HK { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ά��")]
            public Int32 WX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�µ�Դ")]
            public Int32 XDY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɵ�Դ")]
            public Int32 JDY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 PJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�˻�")]
            public Int32 TH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 QT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "δ��")]
            public Int32 WF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public DateTime FHRQ { get; set; }


        }
    }
}

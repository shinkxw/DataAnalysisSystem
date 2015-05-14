namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_12_FJXX_metadata))]
    public partial class EDU_ZDGL_12_FJXX
    {
        public EDU_ZDGL_12_FJXX()
        {
            BZ = "";
            FHRQ = DateTime.Now;
        }
        public class EDU_ZDGL_12_FJXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 PCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ͺ�")]
            public Int32 XHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 SRSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ʒ����")]
            public Int32 LPSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 GZSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 BFSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ϊ������")]
            public Int32 RWSHSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 QT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϼ�")]
            public Int32 HJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


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
            [Display(Name = "������")]
            public Int32 QTE { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "δ��")]
            public Int32 WF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public DateTime FHRQ { get; set; }


        }
    }
}

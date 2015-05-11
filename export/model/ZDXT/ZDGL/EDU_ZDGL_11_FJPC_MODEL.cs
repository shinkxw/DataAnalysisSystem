namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_11_FJPC_metadata))]
    public partial class EDU_ZDGL_11_FJPC
    {
        public EDU_ZDGL_11_FJPC()
        {
            PCH = "";
            JSRQ = DateTime.Now;
            LRSJ = DateTime.Now;
            FJWGSJ = DateTime.Now;
            FJFZR = "";
            QRR = "";
            QRRLXDH = "";
            QRSJ = DateTime.Now;
        }
        public class EDU_ZDGL_11_FJPC_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���κ�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PCH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ͻ�")]
            public Int32 KHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public DateTime JSRQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "¼��ʱ��")]
            public DateTime LRSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ּ��깤ʱ��")]
            public DateTime FJWGSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ּ�����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJFZR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ȷ����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QRR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ȷ������ϵ�绰")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QRRLXDH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ȷ��ʱ��")]
            public DateTime QRSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���Խ��")]
            public Int32 CSJG { get; set; }


        }
    }
}

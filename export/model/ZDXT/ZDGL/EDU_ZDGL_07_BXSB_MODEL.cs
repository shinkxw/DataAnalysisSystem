namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_07_BXSB_metadata))]
    public partial class EDU_ZDGL_07_BXSB
    {
        public EDU_ZDGL_07_BXSB()
        {
            SNM = "";
            SCRQ = DateTime.Now;
            SCCJ = "";
            RKSJ = DateTime.Now;
            RKCZYHID = "";
            FXM = "";
            FXSJ = DateTime.Now;
            FXDJYHID = "";
        }
        public class EDU_ZDGL_07_BXSB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�豸�ͺ�")]
            public Int32 SBXHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���޵�λ")]
            public Int32 SXDWID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "S/N��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SNM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public DateTime SCRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SCCJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 BXZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���޺�ͬ")]
            public Int32 BXHTID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�豸״̬")]
            public Int32 SBZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ά��״̬")]
            public Int32 WXZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime RKSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKCZYHID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FXM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime FXSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���޵Ǽ��û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FXDJYHID { get; set; }


        }
    }
}

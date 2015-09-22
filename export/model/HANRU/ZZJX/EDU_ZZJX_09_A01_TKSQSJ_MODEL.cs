namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_09_A01_TKSQSJ_metadata))]
    public partial class EDU_ZZJX_09_A01_TKSQSJ
    {
        public EDU_ZZJX_09_A01_TKSQSJ()
        {
            KCID = "";
            BZ = "";
            SQSJ = DateTime.Now;
        }
        public class EDU_ZZJX_09_A01_TKSQSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 TKLXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ǰ��ʼ��")]
            public Int32 TKQQSZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ǰ������")]
            public Int32 TKQJSZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ǰ����")]
            public Int32 TKQXQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ǰʱ��")]
            public Int32 TKQSD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ǰ�ڴ�")]
            public Int32 TKQJC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���κ���ʼ��")]
            public Int32 TKHQSZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���κ������")]
            public Int32 TKHJSZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���κ�����")]
            public Int32 TKHXQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���κ�ʱ��")]
            public Int32 TKHSD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���κ�ڴ�")]
            public Int32 TKHJC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ״̬")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ս�ʦ")]
            public Int32 JSJSID { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_32_A01_EXAM_metadata))]
    public partial class EDU_ZZJX_32_A01_EXAM
    {
        public EDU_ZZJX_32_A01_EXAM()
        {
            Name = "";
            CJKSKMLM = "";
            StartDate = DateTime.Now;
            EndDate = DateTime.Now;
        }
        public class EDU_ZZJX_32_A01_EXAM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Name { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�μӿ��Կ�Ŀ�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJKSKMLM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼ����")]
            public DateTime StartDate { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֹ����")]
            public DateTime EndDate { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XqID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿַ�ʽ")]
            public Int32 DffsID { get; set; }


        }
    }
}

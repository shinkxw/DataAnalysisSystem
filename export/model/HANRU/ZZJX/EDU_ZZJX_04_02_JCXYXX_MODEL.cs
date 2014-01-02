namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_04_02_JCXYXX_metadata))]
    public partial class EDU_ZZJX_04_02_JCXYXX
    {
        public EDU_ZZJX_04_02_JCXYXX()
        {
            NJID = "";
            KCID = "";
            SQSJ = DateTime.Now;
            SHSJ = DateTime.Now;
            SFRK = "";
        }
        public class EDU_ZZJX_04_02_JCXYXX_metadata
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
            [Display(Name = "רҵ")]
            public Int32 ZYXXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCID { get; set; }


            [Display(Name = "�̲�")]
            public Int32 JCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ������")]
            public Int32 XYSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 SQRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����")]
            public Int32 SHRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFRK { get; set; }


        }
    }
}

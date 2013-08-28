namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_07_02_RKSJ_metadata))]
    public partial class EDU_ZXJZ_07_02_RKSJ
    {
        public EDU_ZXJZ_07_02_RKSJ()
        {
            RKKCH = "";
            RKQSNY = "";
            RKZZNY = "";
            RKXDM = "";
            RKJSM = "";
            SKBJ = "";
            SFLT = "";
            NJID = "";
        }
        public class EDU_ZXJZ_07_02_RKSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ְ���������������")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�οογ̺�")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKKCH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ο���ʼ����")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKQSNY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ο���ֹ����")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKZZNY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ο���ѧʱ")]
            [Range(typeof(decimal), "0", "999")]
            public decimal RKZXS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ο�ѧ����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKXDM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ον�ɫ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKJSM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ڿΰ༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKBJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ڿ�����")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SKRS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܿ�ʱ")]
            public Int32 ZKS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ�����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFLT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶��")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XNID { get; set; }


        }
    }
}

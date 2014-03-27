namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_02_06_ZXKSCJ_metadata))]
    public partial class EDU_ZXXS_02_06_ZXKSCJ
    {
        public EDU_ZXXS_02_06_ZXKSCJ()
        {
            XN = "";
            XQM = "";
            KSRQ = "";
            KCH = "";
            NJID = "";
            BJID = "";
        }
        public class EDU_ZXXS_02_06_ZXKSCJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���Գɼ���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ�꣨�ȣ�")]
            [StringLength(9)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XN { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̺�")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ον�ʦ")]
            public Int32 RKJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɼ�¼����")]
            public Int32 CJLRRID { get; set; }


            [Display(Name = "���Է�ʽ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSFSM { get; set; }


            [Display(Name = "����������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSXZM { get; set; }


            [Display(Name = "������ʽ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSXSM { get; set; }


            [Display(Name = "�����࿼�Գɼ�")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal FSLKSCJ { get; set; }


            [Display(Name = "�ȼ��࿼�Գɼ�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJLKSCJ { get; set; }


            [Display(Name = "�γ̳ɼ�")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal KCCJ { get; set; }


            [Display(Name = "�γ̵ȼ��ɼ���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCDJCJM { get; set; }


            [Display(Name = "�ον�ʦ����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKJSGH { get; set; }


            [Display(Name = "�ɼ�¼���˺�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJLRRH { get; set; }


            [Display(Name = "�ɼ�¼������")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJLRRQ { get; set; }


            [Display(Name = "�ɼ�¼��ʱ��")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJLRSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 SSKSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������Կ�Ŀ")]
            public Int32 SSKSKMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ծ�")]
            public Int32 SJID { get; set; }


        }
    }
}

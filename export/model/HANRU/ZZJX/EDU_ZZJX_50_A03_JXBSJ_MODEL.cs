namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A03_JXBSJ_metadata))]
    public partial class EDU_ZZJX_50_A03_JXBSJ
    {
        public EDU_ZZJX_50_A03_JXBSJ()
        {
            KCMC = "";
            KCJS = "";
            JXJH = "";
            NJID = "";
            NJMCLB = "";
            SKDD = "";
            BJIDLB = "";
            BJMCLB = "";
            QTJSIDLB = "";
            QTJSMCLB = "";
            SKZCIDLB = "";
            SKZCMCLB = "";
            KCSLT = "";
        }
        public class EDU_ZZJX_50_A03_JXBSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ�޿γ����")]
            public Int32 XXKCLBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̽���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCJS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ�ƻ�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܿ�ʱ")]
            public Int32 ZKS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ״̬")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ν�ʦ")]
            public Int32 KKJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ͽ�ʱ��")]
            public Int32 SKSJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ͽεص�")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKDD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�༶����������")]
            public Int32 BJKRNRS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ϳ�������")]
            public Int32 ZDKBRS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMCLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ʦID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QTJSIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ʦ�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QTJSMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܿ�ʱ")]
            public Int32 WEEKKS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ͽ��ܴ�ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKZCIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ͽ��ܴ������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKZCMCLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�����ͼ")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCSLT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����")]
            public Int32 DJL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϱ�״̬")]
            public Int32 SBZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 KGZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���ѡ��")]
            public Int32 SFXXK { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ϣ")]
            public Int32 FZXXID { get; set; }


        }
    }
}

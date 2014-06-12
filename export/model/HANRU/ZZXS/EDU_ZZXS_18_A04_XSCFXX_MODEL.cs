namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_18_A04_XSCFXX_metadata))]
    public partial class EDU_ZZXS_18_A04_XSCFXX
    {
        public EDU_ZZXS_18_A04_XSCFXX()
        {
            WJQK = "";
            SBSJ = DateTime.Now;
            SHSJ = DateTime.Now;
            BZ = "";
            FSSJ = DateTime.Now;
            JCSJ = DateTime.Now;
        }
        public class EDU_ZZXS_18_A04_XSCFXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Υ������")]
            public Int32 WJLXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ״̬")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Υ�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WJQK { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���鴦������")]
            public Int32 JYCFLXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϱ�ʱ��")]
            public DateTime SBSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϱ���ʦ")]
            public Int32 SBJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���մ�������")]
            public Int32 ZZCFLXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��˽�ʦ")]
            public Int32 SHJSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime FSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime JCSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����ʦ")]
            public Int32 JCJSID { get; set; }


        }
    }
}

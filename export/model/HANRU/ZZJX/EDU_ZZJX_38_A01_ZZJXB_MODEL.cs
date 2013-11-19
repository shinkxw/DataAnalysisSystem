namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_38_A01_ZZJXB_metadata))]
    public partial class EDU_ZZJX_38_A01_ZZJXB
    {
        public EDU_ZZJX_38_A01_ZZJXB()
        {
            NJID = "";
            JXBMC = "";
            KCH = "";
            ZDBJ = "";
            ZDBJMC = "";
            T1NAME = "";
            T2NAME = "";
        }
        public class EDU_ZZJX_38_A01_ZZJXB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "У��")]
            public Int32 ZZXQID { get; set; }


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
            [Display(Name = "��ѧ�༶����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXBMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ʦ")]
            public Int32 TEACHERID1 { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ʦ")]
            public Int32 TEACHERID2 { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ��嵥")]
            public Int32 KCQDID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̺�")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 CLASSROOM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ָ���༶")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDBJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ָ���༶����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDBJMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 RS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ʦ����")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String T1NAME { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ʦ����")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String T2NAME { get; set; }


        }
    }
}

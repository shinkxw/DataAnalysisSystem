namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A21_XFZJXBSJ_metadata))]
    public partial class EDU_ZXJX_53_A21_XFZJXBSJ
    {
        public EDU_ZXJX_53_A21_XFZJXBSJ()
        {
            SKDD = "";
            BZ = "";
            KCMC = "";
            SKBJIDLB = "";
            SKBJMCLB = "";
        }
        public class EDU_ZXJX_53_A21_XFZJXBSJ_metadata
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
            [Display(Name = "���ον�ʦ")]
            public Int32 ZRKJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ον�ʦ")]
            public Int32 FRKJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ�")]
            public Int32 KCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public Int32 KKSJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ͽεص�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKDD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܿ�ʱ")]
            public Int32 ZKS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�༶����������")]
            public Int32 BJKRNRS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ϳ�������")]
            public Int32 ZDKBRS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ڿΰ༶ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKBJIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ڿΰ༶�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKBJMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ������")]
            public Int32 JXBLX { get; set; }


        }
    }
}

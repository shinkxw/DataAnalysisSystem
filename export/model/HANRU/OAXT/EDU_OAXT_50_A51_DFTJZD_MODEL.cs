namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A51_DFTJZD_metadata))]
    public partial class EDU_OAXT_50_A51_DFTJZD
    {
        public EDU_OAXT_50_A51_DFTJZD()
        {
            ZDMC = "";
            SJLYMC = "";
            SJLYDXCJMC = "";
            SJLYSJPCMC = "";
        }
        public class EDU_OAXT_50_A51_DFTJZD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ݼ�")]
            public Int32 SJJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ֶ�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ֶ�����")]
            public Int32 ZDLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Դ����")]
            public Int32 SJLYLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Դ")]
            public Int32 SJLYID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Դ����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJLYMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Դ����㼶")]
            public Int32 SJLYDXCJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Դʱ��Ƶ��")]
            public Int32 SJLYSJPC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Դ����㼶����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJLYDXCJMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Դʱ��Ƶ������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJLYSJPCMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����㼶���ŷ�ʽ")]
            public Int32 DXCJSFFS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʱ��Ƶ�����ŷ�ʽ")]
            public Int32 SJPCSFFS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵĬ��ֵ")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal SZMRZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�߼�Ĭ��ֵ")]
            public Int32 LJMRZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ȼ�")]
            public Int32 YXJ { get; set; }


        }
    }
}

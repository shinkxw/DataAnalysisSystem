namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A11_KHHZ_metadata))]
    public partial class EDU_ZXXS_51_A11_KHHZ
    {
        public EDU_ZXXS_51_A11_KHHZ()
        {
            MC = "";
            YXDLIDLB = "";
            YXDLMCLB = "";
            CXDLIDLB = "";
            CXDLMCLB = "";
            SFXSWDD = "";
        }
        public class EDU_ZXXS_51_A11_KHHZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ܷ�ʽ")]
            public Int32 HZFS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���˶���")]
            public Int32 KHDX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ȴ���ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YXDLIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ȴ��������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YXDLMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������ʽ")]
            public Int32 YXPXFS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ȴ���ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CXDLIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ȴ��������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CXDLMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������ʽ")]
            public Int32 CXPXFS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ȵ���ѡ��ʽ")]
            public Int32 DDPXFS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ���ʾ�޵ȵ�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFXSWDD { get; set; }


        }
    }
}

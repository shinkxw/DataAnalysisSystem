namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_20_A03_GWXX_metadata))]
    public partial class EDU_ZZJX_20_A03_GWXX
    {
        public EDU_ZZJX_20_A03_GWXX()
        {
            JobName = "";
            PubTime = new DateTime(1900, 1, 1);
            EndTime = new DateTime(1900, 1, 1);
            monthlypay = "";
            LanguageRequire = "";
            WorkPlace = "";
            Computer = "";
            education = "";
            Age = "";
            abstract = "";
            Major = "";
            Base = "";
            experience = "";
        }
        public class EDU_ZZJX_20_A03_GWXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵ")]
            public Int32 ComID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��λ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JobName { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ƹ��ʼʱ��")]
            public DateTime PubTime { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ƹ����ʱ��")]
            public DateTime EndTime { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ʽ")]
            public Int32 WorkType { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ա�Ҫ��")]
            public Int32 Sex { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��λн��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String monthlypay { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����Ҫ��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LanguageRequire { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ص�")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WorkPlace { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ˮƽ")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Computer { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ƹ����")]
            public Int32 ZPRS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ��Ҫ��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String education { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����Ҫ��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Age { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��λ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String abstract { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "רҵҪ��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Major { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Base { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String experience { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ���״̬")]
            public Int32 GWSHZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ��ǰ״̬")]
            public Int32 Status { get; set; }


        }
    }
}

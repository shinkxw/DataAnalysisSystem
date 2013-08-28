namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_05_A02_KSKM_metadata))]
    public partial class EDU_ZXJX_05_A02_KSKM
    {
        public EDU_ZXJX_05_A02_KSKM()
        {
            KCH = "";
            NJIDLB = "";
            NJMCLB = "";
            BJIDLB = "";
            BJMCLB = "";
        }
        public class EDU_ZXJX_05_A02_KSKM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 SSKSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̺�")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJMCLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMCLB { get; set; }


            [Display(Name = "�ɼ��ܷ�")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal CJZF { get; set; }


        }
    }
}

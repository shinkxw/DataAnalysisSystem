namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_18_A03_JCCFBZ_metadata))]
    public partial class EDU_ZZXS_18_A03_JCCFBZ
    {
        public EDU_ZZXS_18_A03_JCCFBZ()
        {
            BZMC = "";
            SHRIDLB = "";
            SHRMCLB = "";
            BZ = "";
        }
        public class EDU_ZZXS_18_A03_JCCFBZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 CFLXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��һ����")]
            public Int32 SYBZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��һ����")]
            public Int32 XYBZID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_20_A04_LCBZ_metadata))]
    public partial class EDU_OAXT_20_A04_LCBZ
    {
        public EDU_OAXT_20_A04_LCBZ()
        {
            BZMC = "";
            SPRIDLB = "";
            SPRMCLB = "";
            BZ = "";
        }
        public class EDU_OAXT_20_A04_LCBZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ģ��")]
            public Int32 LCMBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPRIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPRMCLB { get; set; }


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

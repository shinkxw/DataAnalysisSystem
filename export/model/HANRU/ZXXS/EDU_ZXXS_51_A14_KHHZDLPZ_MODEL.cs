namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A14_KHHZDLPZ_metadata))]
    public partial class EDU_ZXXS_51_A14_KHHZDLPZ
    {
        public EDU_ZXXS_51_A14_KHHZDLPZ()
        {
            XYXMIDLB = "";
            XSXX = "";
        }
        public class EDU_ZXXS_51_A14_KHHZDLPZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���˻���")]
            public Int32 KHHZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 DLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 ZSL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѡ����ĿID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XYXMIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʾ��Ϣ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSXX { get; set; }


        }
    }
}

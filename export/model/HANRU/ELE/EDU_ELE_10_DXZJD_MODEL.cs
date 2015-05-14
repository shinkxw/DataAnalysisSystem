namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_10_DXZJD_metadata))]
    public partial class EDU_ELE_10_DXZJD
    {
        public EDU_ELE_10_DXZJD()
        {
            JDMC = "";
        }
        public class EDU_ELE_10_DXZJD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 DXZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ַ�ʽ")]
            public Int32 HFFSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ֲ㼶")]
            public Int32 HFCJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ڵ�")]
            public Int32 FJDID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ڵ�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDMC { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_02_YHFZ_metadata))]
    public partial class EDU_ELE_02_YHFZ
    {
        public EDU_ELE_02_YHFZ()
        {
            YHID = "";
            FZMC = "";
            FZYHID = "";
        }
        public class EDU_ELE_02_YHFZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ��")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϼ�����")]
            public Int32 SJFZID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����û�ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZYHID { get; set; }


        }
    }
}

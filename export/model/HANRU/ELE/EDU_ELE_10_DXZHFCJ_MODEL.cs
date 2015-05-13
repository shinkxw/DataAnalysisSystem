namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_10_DXZHFCJ_metadata))]
    public partial class EDU_ELE_10_DXZHFCJ
    {
        public EDU_ELE_10_DXZHFCJ()
        {
            CJMC = "";
        }
        public class EDU_ELE_10_DXZHFCJ_metadata
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�㼶����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}

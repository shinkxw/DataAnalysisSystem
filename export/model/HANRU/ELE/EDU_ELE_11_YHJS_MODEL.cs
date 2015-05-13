namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_11_YHJS_metadata))]
    public partial class EDU_ELE_11_YHJS
    {
        public EDU_ELE_11_YHJS()
        {
            YHID = "";
        }
        public class EDU_ELE_11_YHJS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 DXZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ɫ")]
            public Int32 JSID { get; set; }


        }
    }
}

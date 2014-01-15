namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_03_XHSJJL_metadata))]
    public partial class EDU_ELE_03_XHSJJL
    {
        public EDU_ELE_03_XHSJJL()
        {
            NAME = "";
            LINK = "";
        }
        public class EDU_ELE_03_XHSJJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ��")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ַ")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LINK { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������ʱ��")]
            public Int32 MAXTIME { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��¼����")]
            public Int32 JLCS { get; set; }


        }
    }
}

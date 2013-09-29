namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_10_A03_JSMZSKS_metadata))]
    public partial class EDU_ZXJX_10_A03_JSMZSKS
    {
        public EDU_ZXJX_10_A03_JSMZSKS()
        {
            KCH = "";
        }
        public class EDU_ZXJX_10_A03_JSMZSKS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "У����")]
            public Int32 XLZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ�ο�")]
            public Int32 JSRKID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̺�")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ͽν���")]
            public Int32 SKJS { get; set; }


        }
    }
}

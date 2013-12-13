namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A11_YQLJLX_metadata))]
    public partial class EDU_ZYZX_01_A11_YQLJLX
    {
        public EDU_ZYZX_01_A11_YQLJLX()
        {
            NAME = "";
        }
        public class EDU_ZYZX_01_A11_YQLJLX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʾ��ʽ")]
            public Int32 SHOWSTYLE { get; set; }


        }
    }
}

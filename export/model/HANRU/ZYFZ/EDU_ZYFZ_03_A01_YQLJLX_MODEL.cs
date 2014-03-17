namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_03_A01_YQLJLX_metadata))]
    public partial class EDU_ZYFZ_03_A01_YQLJLX
    {
        public EDU_ZYFZ_03_A01_YQLJLX()
        {
            LXMC = "";
        }
        public class EDU_ZYFZ_03_A01_YQLJLX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʾ��ʽ")]
            public Int32 XSFS { get; set; }


        }
    }
}

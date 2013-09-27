namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_10_A02_JSGCXPJXM_metadata))]
    public partial class EDU_ZXJX_10_A02_JSGCXPJXM
    {
        public EDU_ZXJX_10_A02_JSGCXPJXM()
        {
            XMMC = "";
            DWMC = "";
        }
        public class EDU_ZXJX_10_A02_JSGCXPJXM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ����")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��λ")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DWMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������߷�")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal ZGF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ȩ��")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZ { get; set; }


        }
    }
}

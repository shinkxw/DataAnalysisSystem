namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_21_A01_QJLX_metadata))]
    public partial class EDU_OAXT_21_A01_QJLX
    {
        public EDU_OAXT_21_A01_QJLX()
        {
            LXMC = "";
            BZ = "";
            JSDW = "";
        }
        public class EDU_OAXT_21_A01_QJLX_metadata
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʱ��λ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSDW { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ʱ��")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal ZCSJ { get; set; }


        }
    }
}

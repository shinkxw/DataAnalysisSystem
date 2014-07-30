namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_31_A03_XGRTXL_metadata))]
    public partial class EDU_OAXT_31_A03_XGRTXL
    {
        public EDU_OAXT_31_A03_XGRTXL()
        {
            GRID = "";
            NR = "";
        }
        public class EDU_OAXT_31_A03_XGRTXL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ֶ����ñ�")]
            public Int32 ZDPZID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_04_A01_ZLWJML_metadata))]
    public partial class EDU_ZYZX_04_A01_ZLWJML
    {
        public EDU_ZYZX_04_A01_ZLWJML()
        {
            MLMC = "";
        }
        public class EDU_ZYZX_04_A01_ZLWJML_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ŀ¼����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MLMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ¼")]
            public Int32 FMLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}

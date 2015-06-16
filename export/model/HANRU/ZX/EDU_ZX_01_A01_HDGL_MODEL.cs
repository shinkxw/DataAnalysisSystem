namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZX_01_A01_HDGL_metadata))]
    public partial class EDU_ZX_01_A01_HDGL
    {
        public EDU_ZX_01_A01_HDGL()
        {
            HDBMBBT = "";
            HDBMTZ = "";
            HDQTZT = "";
        }
        public class EDU_ZX_01_A01_HDGL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDBMBBT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����֪ͨ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDBMTZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ͣ״̬")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDQTZT { get; set; }


        }
    }
}

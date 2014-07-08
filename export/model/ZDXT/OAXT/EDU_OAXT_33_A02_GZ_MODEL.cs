namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_33_A02_GZ_metadata))]
    public partial class EDU_OAXT_33_A02_GZ
    {
        public EDU_OAXT_33_A02_GZ()
        {
            QZTPLJ = "";
        }
        public class EDU_OAXT_33_A02_GZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ǩ��ͼƬ·��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QZTPLJ { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A02_ZYMLSHQX_metadata))]
    public partial class EDU_ZYZX_01_A02_ZYMLSHQX
    {
        public EDU_ZYZX_01_A02_ZYMLSHQX()
        {
            YHID = "";
        }
        public class EDU_ZYZX_01_A02_ZYMLSHQX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Display(Name = "Ŀ¼ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MLIDLB { get; set; }


        }
    }
}

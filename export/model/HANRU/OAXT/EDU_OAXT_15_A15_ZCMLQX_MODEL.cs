namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A15_ZCMLQX_metadata))]
    public partial class EDU_OAXT_15_A15_ZCMLQX
    {
        public EDU_OAXT_15_A15_ZCMLQX()
        {
            YHID = "";
        }
        public class EDU_OAXT_15_A15_ZCMLQX_metadata
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


            [Display(Name = "Ŀ¼�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MLMCLB { get; set; }


        }
    }
}

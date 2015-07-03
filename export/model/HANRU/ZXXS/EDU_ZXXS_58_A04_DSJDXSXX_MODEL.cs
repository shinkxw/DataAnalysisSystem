namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_58_A04_DSJDXSXX_metadata))]
    public partial class EDU_ZXXS_58_A04_DSJDXSXX
    {
        public EDU_ZXXS_58_A04_DSJDXSXX()
        {
            ZP = "";
            ZWJS = "";
        }
        public class EDU_ZXXS_58_A04_DSJDXSXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ƭ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZP { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ҽ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZWJS { get; set; }


        }
    }
}

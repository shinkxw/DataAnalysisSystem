namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A01_DFXM_metadata))]
    public partial class EDU_OAXT_50_A01_DFXM
    {
        public EDU_OAXT_50_A01_DFXM()
        {
            XMMC = "";
        }
        public class EDU_OAXT_50_A01_DFXM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ӧ��")]
            public Int32 APPID { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_MHXT_NWIP_metadata))]
    public partial class EDU_ZYZX_MHXT_NWIP
    {
        public EDU_ZYZX_MHXT_NWIP()
        {
            IP = "";
        }
        public class EDU_ZYZX_MHXT_NWIP_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "����IP����")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "IP��ַ")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IP { get; set; }


        }
    }
}

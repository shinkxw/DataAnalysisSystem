namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXFC_08_A01_SSCW_metadata))]
    public partial class EDU_ZXFC_08_A01_SSCW
    {
        public EDU_ZXFC_08_A01_SSCW()
        {
            CWM = "";
            BZ = "";
            SFRZ = "";
        }
        public class EDU_ZXFC_08_A01_SSCW_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "宿舍楼")]
            public Int32 SSLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "宿舍")]
            public Int32 SSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "床位名")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CWM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否入住")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFRZ { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_20_A08_XSPJTJJL_metadata))]
    public partial class EDU_ZXJZ_20_A08_XSPJTJJL
    {
        public EDU_ZXJZ_20_A08_XSPJTJJL()
        {
            SBM = "";
            IP = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXJZ_20_A08_XSPJTJJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评班级")]
            public Int32 KPBJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "识别码")]
            [StringLength(9)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SBM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "IP地址")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IP { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "提交时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}

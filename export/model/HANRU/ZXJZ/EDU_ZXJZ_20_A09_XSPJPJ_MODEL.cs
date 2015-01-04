namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_20_A09_XSPJPJ_metadata))]
    public partial class EDU_ZXJZ_20_A09_XSPJPJ
    {
        public EDU_ZXJZ_20_A09_XSPJPJ()
        {
            IP = "";
            PJNR = "";
        }
        public class EDU_ZXJZ_20_A09_XSPJPJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评班级")]
            public Int32 KPBJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教职工")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "IP地址")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IP { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评价内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJNR { get; set; }


        }
    }
}

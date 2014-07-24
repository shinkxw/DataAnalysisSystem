namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_37_A01_CYWDXX_metadata))]
    public partial class EDU_OAXT_37_A01_CYWDXX
    {
        public EDU_OAXT_37_A01_CYWDXX()
        {
            BT = "";
            FBRXM = "";
            FBRID = "";
            FBSJ = DateTime.Now;
            NR = "";
        }
        public class EDU_OAXT_37_A01_CYWDXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "标题")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发布人姓名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBRXM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发布人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发布时间")]
            public DateTime FBSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "浏览人次")]
            public Int32 LLRC { get; set; }


        }
    }
}

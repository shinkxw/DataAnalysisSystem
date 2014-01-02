namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_TPXT_TPJL_metadata))]
    public partial class EDU_WZXT_TPXT_TPJL
    {
        public EDU_WZXT_TPXT_TPJL()
        {
            TPIP = "";
            TPTIME = DateTime.Now;
        }
        public class EDU_WZXT_TPXT_TPJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "投票记录")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "投票")]
            public Int32 TPID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "投票人")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TPIP { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "投票时间")]
            public DateTime TPTIME { get; set; }


        }
    }
}

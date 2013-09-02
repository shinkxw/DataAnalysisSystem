namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_TPXT_TPXX_metadata))]
    public partial class EDU_ZYZX_TPXT_TPXX
    {
        public EDU_ZYZX_TPXT_TPXX()
        {
        }
        public class EDU_ZYZX_TPXT_TPXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "投票题目选项")]
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "投票题目")]
            public Int32 TMID { get; set; }


            [Display(Name = "标题")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TITLE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "已选人数")]
            public Int32 SUMTP { get; set; }


        }
    }
}

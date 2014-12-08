namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_XYDT_01_A08_SPWJPL_metadata))]
    public partial class EDU_XYDT_01_A08_SPWJPL
    {
        public EDU_XYDT_01_A08_SPWJPL()
        {
            PL = "";
            PLRID = "";
            PLSJ = DateTime.Now;
        }
        public class EDU_XYDT_01_A08_SPWJPL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "视频文件")]
            public Int32 SPWJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评论")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评论人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PLRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评论时间")]
            public DateTime PLSJ { get; set; }


        }
    }
}

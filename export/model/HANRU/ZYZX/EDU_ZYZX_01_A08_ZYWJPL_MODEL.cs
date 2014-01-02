namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A08_ZYWJPL_metadata))]
    public partial class EDU_ZYZX_01_A08_ZYWJPL
    {
        public EDU_ZYZX_01_A08_ZYWJPL()
        {
            PL = "";
            PLRID = "";
            PLSJ = DateTime.Now;
        }
        public class EDU_ZYZX_01_A08_ZYWJPL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资源文件")]
            public Int32 ZYWJID { get; set; }


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

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A07_ZYWJPJ_metadata))]
    public partial class EDU_ZYZX_01_A07_ZYWJPJ
    {
        public EDU_ZYZX_01_A07_ZYWJPJ()
        {
            PL = "";
            PJRID = "";
            PJSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZYZX_01_A07_ZYWJPJ_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评分")]
            public Int32 PF { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评论")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评价人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价时间")]
            public DateTime PJSJ { get; set; }


        }
    }
}

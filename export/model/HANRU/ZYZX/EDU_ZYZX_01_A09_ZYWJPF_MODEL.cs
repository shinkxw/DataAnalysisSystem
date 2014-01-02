namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A09_ZYWJPF_metadata))]
    public partial class EDU_ZYZX_01_A09_ZYWJPF
    {
        public EDU_ZYZX_01_A09_ZYWJPF()
        {
            PFRID = "";
            PFSJ = DateTime.Now;
        }
        public class EDU_ZYZX_01_A09_ZYWJPF_metadata
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
            [Display(Name = "评分人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PFRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评分时间")]
            public DateTime PFSJ { get; set; }


        }
    }
}

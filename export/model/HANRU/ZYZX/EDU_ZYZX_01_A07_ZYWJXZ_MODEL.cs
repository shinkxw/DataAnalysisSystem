namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A07_ZYWJXZ_metadata))]
    public partial class EDU_ZYZX_01_A07_ZYWJXZ
    {
        public EDU_ZYZX_01_A07_ZYWJXZ()
        {
            XZRID = "";
            XZSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZYZX_01_A07_ZYWJXZ_metadata
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
            [Display(Name = "下载人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "下载时间")]
            public DateTime XZSJ { get; set; }


        }
    }
}

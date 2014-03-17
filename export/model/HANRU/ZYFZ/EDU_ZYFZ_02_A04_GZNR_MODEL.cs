namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_02_A04_GZNR_metadata))]
    public partial class EDU_ZYFZ_02_A04_GZNR
    {
        public EDU_ZYFZ_02_A04_GZNR()
        {
            BT = "";
            GJC = "";
            SFGK = "";
            NR = "";
            FBRID = "";
            FBSJ = DateTime.Now;
        }
        public class EDU_ZYFZ_02_A04_GZNR_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "标题")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "关键词")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GJC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属栏目")]
            public Int32 SSLMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属学科")]
            public Int32 SSXKID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属年级")]
            public Int32 SSNJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否公开")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFGK { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发布人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发布时间")]
            public DateTime FBSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "浏览量")]
            public Int32 LLL { get; set; }


        }
    }
}

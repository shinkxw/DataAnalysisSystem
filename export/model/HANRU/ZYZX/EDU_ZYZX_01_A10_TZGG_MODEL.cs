namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A10_TZGG_metadata))]
    public partial class EDU_ZYZX_01_A10_TZGG
    {
        public EDU_ZYZX_01_A10_TZGG()
        {
            TITLE = "";
            FBRID = "";
            FBRXM = "";
            FBSJ = DateTime.Now;
            SHSJ = DateTime.Now;
        }
        public class EDU_ZYZX_01_A10_TZGG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "标题")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TITLE { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发布人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发布人姓名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBRXM { get; set; }


            [Display(Name = "发布部门")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBBM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发布时间")]
            public DateTime FBSJ { get; set; }


            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Display(Name = "图片地址")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TPDZ { get; set; }


            [Display(Name = "点击量")]
            public Int32 DJL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Display(Name = "审核人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRID { get; set; }


            [Display(Name = "审核人姓名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRXM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否显示")]
            public Int32 SFXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否置顶")]
            public Int32 SFZD { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_WZLM_metadata))]
    public partial class EDU_WZXT_MHXT_WZLM
    {
        public EDU_WZXT_MHXT_WZLM()
        {
            NAME = "";
        }
        public class EDU_WZXT_MHXT_WZLM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站栏目（导航）")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "栏目使用类型")]
            public Int32 LMSHOWSTYLE { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "栏目名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Display(Name = "栏目链接")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String URL { get; set; }


            [Display(Name = "图片链接")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IMAGEURL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "层级")]
            public Int32 DEPTH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "父目录")]
            public Int32 PID { get; set; }


            [Display(Name = "列表显示型式")]
            public Int32 LISTSHOWSTYLE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排序方式")]
            public Int32 ORDERTYPE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "显示个数")]
            public Int32 SHOWNUMBER { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开启状态")]
            public Int32 OPENFLAG { get; set; }


            [Display(Name = "浏览权限")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LLQX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


        }
    }
}

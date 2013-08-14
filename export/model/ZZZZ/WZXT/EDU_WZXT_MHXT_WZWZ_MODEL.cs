namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_WZWZ_metadata))]
    public partial class EDU_WZXT_MHXT_WZWZ
    {
        public EDU_WZXT_MHXT_WZWZ()
        {
            TITLE = "";
            PUBLISHERNAME = "";
            AUTHOR = "";
        }
        public class EDU_WZXT_MHXT_WZWZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站文章")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "网站")]
            public Int32 WEBID { get; set; }


            [Display(Name = "类型名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TYPENAME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "栏目")]
            public Int32 LMID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "标题")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TITLE { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发布人")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PUBLISHERNAME { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "作者")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AUTHOR { get; set; }


            [Display(Name = "作者部门")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AUTHORDEPART { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发布时间")]
            public DateTime PUBLISHDATE { get; set; }


            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CONTENT { get; set; }


            [Display(Name = "链接")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String URL { get; set; }


            [Display(Name = "图片")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IMAGEURL { get; set; }


            [Display(Name = "附件名")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ATTACHMENTNAME { get; set; }


            [Display(Name = "附件")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ATTACHMENT { get; set; }


            [Display(Name = "点击量")]
            public Int32 CHICKNUB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 AUDITSTATU { get; set; }


            [Display(Name = "审核人")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AUDITOR { get; set; }


            [Display(Name = "审核人")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AUDITORNAME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime AUDITTIME { get; set; }


            [Display(Name = "备注")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String REMARK { get; set; }


            [Display(Name = "摘要")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SUMMARY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否显示")]
            public Int32 DISPLAYTYPE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "内外网")]
            public Int32 OPENFLAG { get; set; }


            [Display(Name = "浏览权限")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LLQX { get; set; }


        }
    }
}

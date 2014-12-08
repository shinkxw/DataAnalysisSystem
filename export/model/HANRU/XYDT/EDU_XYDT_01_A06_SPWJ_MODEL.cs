namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_XYDT_01_A06_SPWJ_metadata))]
    public partial class EDU_XYDT_01_A06_SPWJ
    {
        public EDU_XYDT_01_A06_SPWJ()
        {
            ZYBT = "";
            GJZ = "";
            LY = "";
            WBSPLJ = "";
            YYZID = "";
            SPMC = "";
            SPDX = "";
            SPLJ = "";
            SLT = "";
            SCSJ = DateTime.Now;
            SHRID = "";
            SHSJ = DateTime.Now;
        }
        public class EDU_XYDT_01_A06_SPWJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "视频目录")]
            public Int32 SPMLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "视频标题")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYBT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "关键字")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GJZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "使用限制")]
            public Int32 SYXZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "来源")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "外部视频链接")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WBSPLJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "拥有者")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YYZID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "视频名称")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "视频大小")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPDX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "视频路径")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPLJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "视频类型")]
            public Int32 SPLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "视频评级")]
            public Int32 SPPJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "缩略图")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SLT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上传时间")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "浏览人次")]
            public Int32 LLRC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "下载人次")]
            public Int32 XZRC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评论人次")]
            public Int32 PLRC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评分人次")]
            public Int32 PFRC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资源大小(KB)")]
            public Int32 ZYDXKB { get; set; }


        }
    }
}

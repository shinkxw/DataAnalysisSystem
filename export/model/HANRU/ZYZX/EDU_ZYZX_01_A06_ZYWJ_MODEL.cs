namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A06_ZYWJ_metadata))]
    public partial class EDU_ZYZX_01_A06_ZYWJ
    {
        public EDU_ZYZX_01_A06_ZYWJ()
        {
            ZYBT = "";
            BZ = "";
            GJZ = "";
            YYZID = "";
            ZYNR = "";
            FJMC = "";
            FJDX = "";
            FJLJ = "";
            SCSJ = new DateTime(1900, 1, 1);
            SYNJ = "";
            SHRID = "";
            SHSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZYZX_01_A06_ZYWJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资源类型")]
            public Int32 ZYFLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资源目录")]
            public Int32 ZYMLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "资源标题")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYBT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "关键字")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GJZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "拥有者")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YYZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资源浏览类型")]
            public Int32 ZYLLLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "文件类型")]
            public Int32 WJLXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "资源内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "附件名称")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "附件大小")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJDX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "附件路径")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJLJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资源状态")]
            public Int32 ZYZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资源评级")]
            public Int32 ZYPJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上传时间")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "适用年级")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SYNJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "适用学科")]
            public Int32 SYXK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "浏览人次")]
            public Int32 LLRC { get; set; }


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


        }
    }
}

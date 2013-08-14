namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A04_SXGW_metadata))]
    public partial class EDU_ZZJX_07_A04_SXGW
    {
        public EDU_ZZJX_07_A04_SXGW()
        {
            GWMC = "";
            XBYQ = "";
            GWXC = "";
            WYYQ = "";
            GZDD = "";
            JSJSP = "";
            XLYQ = "";
            ZYYQ = "";
            GWJJ = "";
            JBQK = "";
            GZJY = "";
        }
        public class EDU_ZZJX_07_A04_SXGW_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习岗位")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业")]
            public Int32 QYID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "岗位名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业名称")]
            public Int32 QYMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "招聘开始时间")]
            public DateTime ZPKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "招聘结束时间")]
            public DateTime ZPJSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "工作形式")]
            public Int32 GZXS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "性别要求")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XBYQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "岗位薪酬")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWXC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "外语要求")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WYYQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "工作地点")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZDD { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计算机水平")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSJSP { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "招聘人数")]
            public Int32 ZPRS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学历要求")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XLYQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "专业要求")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYYQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "年龄要求")]
            public Int32 NLYQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "岗位简介")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWJJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "基本情况")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBQK { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "工作经验")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZJY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "岗位状态")]
            public Int32 GWZT { get; set; }


        }
    }
}

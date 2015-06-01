namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A54_DFTJJGST_metadata))]
    public partial class EDU_OAXT_50_A54_DFTJJGST
    {
        public EDU_OAXT_50_A54_DFTJJGST()
        {
            STMC = "";
            ZSZDIDLB = "";
            ZSZDMCLB = "";
            ZSDXJDBMJH = "";
            ZSDXJDMCLB = "";
            ZSSJQSSJ = DateTime.Now;
            ZSSJJSSJ = DateTime.Now;
            SDDX = "";
            KCKYHIDLB = "";
            KCKYHXMLB = "";
            ZSKQSJ = DateTime.Now;
            ZSGBSJ = DateTime.Now;
        }
        public class EDU_OAXT_50_A54_DFTJJGST_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "项目")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数据集")]
            public Int32 SJJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "视图名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String STMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "展示字段ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSZDIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "展示字段名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSZDMCLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "展示对象节点编码集合")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSDXJDBMJH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "展示对象节点名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSDXJDMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "展示数据起始时间")]
            public DateTime ZSSJQSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "展示数据结束时间")]
            public DateTime ZSSJJSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "锁定维度")]
            public Int32 SDWZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否可供选择")]
            public Int32 SFKGXZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "锁定对象")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SDDX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "可查看用户ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCKYHIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "可查看用户姓名列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCKYHXMLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "展示开启时间")]
            public DateTime ZSKQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "展示关闭时间")]
            public DateTime ZSGBSJ { get; set; }


        }
    }
}

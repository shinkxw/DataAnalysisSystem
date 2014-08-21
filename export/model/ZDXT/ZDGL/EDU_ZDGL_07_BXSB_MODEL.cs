namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_07_BXSB_metadata))]
    public partial class EDU_ZDGL_07_BXSB
    {
        public EDU_ZDGL_07_BXSB()
        {
            SXDWMC = "";
            SNM = "";
            SCRQ = DateTime.Now;
            SBLXMC = "";
            SCCJMC = "";
            SBXHMC = "";
            RKSJ = DateTime.Now;
            RKCZYHID = "";
            FXM = "";
            FXXX = "";
            WXJSSJ = DateTime.Now;
            WXJSDJYHID = "";
        }
        public class EDU_ZDGL_07_BXSB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "设备型号")]
            public Int32 SBXHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "送修单位")]
            public Int32 SXDWID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "送修单位名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXDWMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "S/N码")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SNM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "生产日期")]
            public DateTime SCRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "设备类型名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SBLXMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "生产厂家名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SCCJMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "设备型号名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SBXHMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "保修状态")]
            public Int32 BXZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "保修合同")]
            public Int32 BXHTID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "设备状态")]
            public Int32 SBZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "维修状态")]
            public Int32 WXZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "入库时间")]
            public DateTime RKSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "入库操作用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKCZYHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "返修码")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FXM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "返修信息")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FXXX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "返修序号")]
            public Int32 FXXH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "维修结束时间")]
            public DateTime WXJSSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "维修结束登记用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WXJSDJYHID { get; set; }


        }
    }
}

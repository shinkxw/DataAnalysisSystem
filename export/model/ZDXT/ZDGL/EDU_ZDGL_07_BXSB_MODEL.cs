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
            SNM = "";
            SCRQ = DateTime.Now;
            SCCJ = "";
            RKSJ = DateTime.Now;
            RKCZYHID = "";
            FXM = "";
            FXSJ = DateTime.Now;
            FXDJYHID = "";
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
            [Display(Name = "S/N码")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SNM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "生产日期")]
            public DateTime SCRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "生产厂家")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SCCJ { get; set; }


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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "返修时间")]
            public DateTime FXSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "返修登记用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FXDJYHID { get; set; }


        }
    }
}

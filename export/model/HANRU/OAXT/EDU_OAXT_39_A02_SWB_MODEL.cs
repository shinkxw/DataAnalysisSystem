namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_39_A02_SWB_metadata))]
    public partial class EDU_OAXT_39_A02_SWB
    {
        public EDU_OAXT_39_A02_SWB()
        {
            LWDW = "";
            LWRQ = DateTime.Now;
            LWWH = "";
            WJBT = "";
            WJNR = "";
            PSYJ = "";
            SFSH = "";
        }
        public class EDU_OAXT_39_A02_SWB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "类别")]
            public Int32 LBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "来文单位")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LWDW { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "来文日期")]
            public DateTime LWRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "来文文号")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LWWH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "文件标题")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WJBT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "文件内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WJNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "批示意见")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PSYJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否收回")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "下发文档类型")]
            public Int32 XFWDLX { get; set; }


        }
    }
}

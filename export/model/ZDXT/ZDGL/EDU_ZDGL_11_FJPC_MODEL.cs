namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_11_FJPC_metadata))]
    public partial class EDU_ZDGL_11_FJPC
    {
        public EDU_ZDGL_11_FJPC()
        {
            PCH = "";
            JSRQ = DateTime.Now;
            LRSJ = DateTime.Now;
            FJWGSJ = DateTime.Now;
            FJFZR = "";
            QRR = "";
            QRRLXDH = "";
            QRSJ = DateTime.Now;
        }
        public class EDU_ZDGL_11_FJPC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "批次号")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PCH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "客户")]
            public Int32 KHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "接受日期")]
            public DateTime JSRQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "录入时间")]
            public DateTime LRSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分拣完工时间")]
            public DateTime FJWGSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "分拣负责人")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJFZR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "确认人")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QRR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "确认人联系电话")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QRRLXDH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "确认时间")]
            public DateTime QRSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "测试结果")]
            public Int32 CSJG { get; set; }


        }
    }
}

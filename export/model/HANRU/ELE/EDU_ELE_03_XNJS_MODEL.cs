namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_03_XNJS_metadata))]
    public partial class EDU_ELE_03_XNJS
    {
        public EDU_ELE_03_XNJS()
        {
            JLSJ = DateTime.Now;
        }
        public class EDU_ELE_03_XNJS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "记录时间")]
            public DateTime JLSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "CPU使用率")]
            public float CPUSYL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "内存使用率")]
            public float NCSYL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "磁盘读取速度")]
            public float CPDQSD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "磁盘写入速度")]
            public float CPXRSD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "在线人数")]
            public Int32 ZXRS { get; set; }


        }
    }
}

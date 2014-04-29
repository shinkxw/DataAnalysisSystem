namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_02_A02_BGQK_metadata))]
    public partial class EDU_ZWXT_02_A02_BGQK
    {
        public EDU_ZWXT_02_A02_BGQK()
        {
            KDGSMC = "";
            KDDH = "";
            SJRID = "";
            DJRID = "";
            DJSJ = DateTime.Now;
            QSSJ = DateTime.Now;
        }
        public class EDU_ZWXT_02_A02_BGQK_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "快递公司名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KDGSMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "快递单号")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KDDH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "收件人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "登记人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登记时间")]
            public DateTime DJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "签收状态")]
            public Int32 QSZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "签收时间")]
            public DateTime QSSJ { get; set; }


        }
    }
}

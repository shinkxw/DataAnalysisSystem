namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A16_CJSB_metadata))]
    public partial class EDU_ZZJX_55_A16_CJSB
    {
        public EDU_ZZJX_55_A16_CJSB()
        {
            SBRID = "";
            SBSJ = DateTime.Now;
        }
        public class EDU_ZZJX_55_A16_CJSB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学计划表")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "上报人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SBRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上报时间")]
            public DateTime SBSJ { get; set; }


        }
    }
}

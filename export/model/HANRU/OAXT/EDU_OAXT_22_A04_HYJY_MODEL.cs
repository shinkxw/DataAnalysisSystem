namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_22_A04_HYJY_metadata))]
    public partial class EDU_OAXT_22_A04_HYJY
    {
        public EDU_OAXT_22_A04_HYJY()
        {
            HYJYNR = "";
            JLRID = "";
            JLSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_OAXT_22_A04_HYJY_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "会议")]
            public Int32 HYID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "会议纪要内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HYJYNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "记录人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JLRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "记录时间")]
            public DateTime JLSJ { get; set; }


        }
    }
}

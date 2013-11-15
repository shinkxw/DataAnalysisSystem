namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_32_A01_DCWJ_metadata))]
    public partial class EDU_OAXT_32_A01_DCWJ
    {
        public EDU_OAXT_32_A01_DCWJ()
        {
            Title = "";
            Users = "";
            DoneUsers = "";
            StartTime = new DateTime(1900, 1, 1);
            EndTime = new DateTime(1900, 1, 1);
        }
        public class EDU_OAXT_32_A01_DCWJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "问卷名称")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Title { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调查对象类型")]
            public Int32 Type { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "参选人员")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Users { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "已参选人员")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DoneUsers { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime StartTime { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime EndTime { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否开启")]
            public Int32 IsStart { get; set; }


        }
    }
}

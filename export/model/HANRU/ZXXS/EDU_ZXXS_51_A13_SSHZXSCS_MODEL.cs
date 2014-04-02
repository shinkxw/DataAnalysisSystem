namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A13_SSHZXSCS_metadata))]
    public partial class EDU_ZXXS_51_A13_SSHZXSCS
    {
        public EDU_ZXXS_51_A13_SSHZXSCS()
        {
        }
        public class EDU_ZXXS_51_A13_SSHZXSCS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核汇总")]
            public Int32 KHHZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "公寓")]
            public Int32 GY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "楼层")]
            public Int32 LC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "宿舍")]
            public Int32 SS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班级")]
            public Int32 BJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            public Int32 FZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "等第")]
            public Int32 DD { get; set; }


        }
    }
}

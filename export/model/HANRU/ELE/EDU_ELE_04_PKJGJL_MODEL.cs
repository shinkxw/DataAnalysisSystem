namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_04_PKJGJL_metadata))]
    public partial class EDU_ELE_04_PKJGJL
    {
        public EDU_ELE_04_PKJGJL()
        {
            TEACHERNAME = "";
            COURSEID = "";
            COURSENAME = "";
            CLASSID = "";
            CLASSNAME = "";
        }
        public class EDU_ELE_04_PKJGJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "老师")]
            public Int32 TEACHERID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "老师")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TEACHERNAME { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String COURSEID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String COURSENAME { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLASSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLASSNAME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "工作日")]
            public Int32 WEEKDAY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "时段")]
            public Int32 PERIOD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "节次")]
            public Int32 SESSION { get; set; }


        }
    }
}

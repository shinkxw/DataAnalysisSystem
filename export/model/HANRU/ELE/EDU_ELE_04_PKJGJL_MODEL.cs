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
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ")]
            public Int32 TEACHERID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʦ")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TEACHERNAME { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String COURSEID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String COURSENAME { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLASSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLASSNAME { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 WEEKDAY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʱ��")]
            public Int32 PERIOD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ڴ�")]
            public Int32 SESSION { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_SCHOOL_metadata))]
    public partial class EDU_ELE_01_SCHOOL
    {
        public EDU_ELE_01_SCHOOL()
        {
            SCHOOLNAME = "";
            MatchURL = "";
        }
        public class EDU_ELE_01_SCHOOL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧУ����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SCHOOLNAME { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ����")]
            public Int32 SCHOOLTYPE { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ƥ��url")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MatchURL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��־����")]
            public Int32 LogLevel { get; set; }


        }
    }
}

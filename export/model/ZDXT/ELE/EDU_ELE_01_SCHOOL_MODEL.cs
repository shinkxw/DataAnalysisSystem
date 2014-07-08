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
            MenhuURL = "";
            ModuleIdList = "";
            CreateTime = DateTime.Now;
            YXTID = "";
            LOGO = "";
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ż�url")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MenhuURL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ż�webid")]
            public Int32 MenhuWebid { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��־����")]
            public Int32 LogLevel { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ȩ���б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ModuleIdList { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 EnableStatus { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime CreateTime { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Уͨ")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YXTID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ͼ��")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LOGO { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_04_A03_JCLYJL_metadata))]
    public partial class EDU_ZXJX_04_A03_JCLYJL
    {
        public EDU_ZXJX_04_A03_JCLYJL()
        {
            NJID = "";
            BJID = "";
            LYR = "";
            LYSJ = DateTime.Now;
        }
        public class EDU_ZXJX_04_A03_JCLYJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�̲�")]
            public Int32 JCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 LYSL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LYR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime LYSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 JSRID { get; set; }


        }
    }
}

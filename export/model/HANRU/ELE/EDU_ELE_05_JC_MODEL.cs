namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_05_JC_metadata))]
    public partial class EDU_ELE_05_JC
    {
        public EDU_ELE_05_JC()
        {
            MC = "";
        }
        public class EDU_ELE_05_JC_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public Int32 SDID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼСʱ")]
            public Int32 KSXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼ����")]
            public Int32 KSFZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Сʱ")]
            public Int32 JSXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 JSFZ { get; set; }


        }
    }
}

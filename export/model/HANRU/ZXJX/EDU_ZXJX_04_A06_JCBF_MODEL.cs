namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_04_A06_JCBF_metadata))]
    public partial class EDU_ZXJX_04_A06_JCBF
    {
        public EDU_ZXJX_04_A06_JCBF()
        {
            BFYY = "";
            BFSJ = DateTime.Now;
        }
        public class EDU_ZXJX_04_A06_JCBF_metadata
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


            [Display(Name = "�̲�")]
            public Int32 JCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 BFSL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ԭ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BFYY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime BFSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 JSRID { get; set; }


        }
    }
}

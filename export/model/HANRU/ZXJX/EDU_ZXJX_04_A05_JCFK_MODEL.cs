namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_04_A05_JCFK_metadata))]
    public partial class EDU_ZXJX_04_A05_JCFK
    {
        public EDU_ZXJX_04_A05_JCFK()
        {
            FKXX = "";
            FKSJ = DateTime.Now;
        }
        public class EDU_ZXJX_04_A05_JCFK_metadata
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Ϣ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FKXX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime FKSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ʦ")]
            public Int32 FKJSID { get; set; }


        }
    }
}

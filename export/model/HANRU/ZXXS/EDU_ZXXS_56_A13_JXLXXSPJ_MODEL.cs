namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_56_A13_JXLXXSPJ_metadata))]
    public partial class EDU_ZXXS_56_A13_JXLXXSPJ
    {
        public EDU_ZXXS_56_A13_JXLXXSPJ()
        {
            DJSJ = DateTime.Now;
        }
        public class EDU_ZXXS_56_A13_JXLXXSPJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѧ��")]
            public Int32 BPXSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѧ��")]
            public Int32 PJXSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 PJXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ѡ��")]
            public Int32 DFXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ǽ�ʱ��")]
            public DateTime DJSJ { get; set; }


        }
    }
}

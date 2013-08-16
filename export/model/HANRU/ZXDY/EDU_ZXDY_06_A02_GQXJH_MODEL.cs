namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_06_A02_GQXJH_metadata))]
    public partial class EDU_ZXDY_06_A02_GQXJH
    {
        public EDU_ZXDY_06_A02_GQXJH()
        {
        }
        public class EDU_ZXDY_06_A02_GQXJH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "�����½�����")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܴ�")]
            public Int32 ZCID { get; set; }


            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHZT { get; set; }


            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHNR { get; set; }


        }
    }
}

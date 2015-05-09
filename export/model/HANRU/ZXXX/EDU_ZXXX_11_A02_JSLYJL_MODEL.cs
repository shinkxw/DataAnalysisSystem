namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXX_11_A02_JSLYJL_metadata))]
    public partial class EDU_ZXXX_11_A02_JSLYJL
    {
        public EDU_ZXXX_11_A02_JSLYJL()
        {
            LYSJ = DateTime.Now;
            SHYHID = "";
        }
        public class EDU_ZXXX_11_A02_JSLYJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ý�ʦ")]
            public Int32 LYJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ʲ�")]
            public Int32 ZCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 LYSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime LYSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHYHID { get; set; }


        }
    }
}

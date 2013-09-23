namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_01_02_JLCBGLL_metadata))]
    public partial class EDU_JPXT_01_02_JLCBGLL
    {
        public EDU_JPXT_01_02_JLCBGLL()
        {
            BGZT = "";
        }
        public class EDU_JPXT_01_02_JLCBGLL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 JLCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ա")]
            public Int32 JLYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ܿ�ʼʱ��")]
            public DateTime BGKSSJ { get; set; }


            [Display(Name = "���ܽ���ʱ��")]
            public DateTime BGJSSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����״̬")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BGZT { get; set; }


        }
    }
}

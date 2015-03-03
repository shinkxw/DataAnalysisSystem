namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A41_XFZDYCS_metadata))]
    public partial class EDU_ZXJX_53_A41_XFZDYCS
    {
        public EDU_ZXJX_53_A41_XFZDYCS()
        {
            CSMC = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXJX_53_A41_XFZDYCS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ���ƽ�ѧ��")]
            public Int32 XFZJXBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CSMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}

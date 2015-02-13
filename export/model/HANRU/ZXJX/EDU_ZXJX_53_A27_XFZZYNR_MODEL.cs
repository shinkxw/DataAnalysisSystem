namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A27_XFZZYNR_metadata))]
    public partial class EDU_ZXJX_53_A27_XFZZYNR
    {
        public EDU_ZXJX_53_A27_XFZZYNR()
        {
            ZYNR = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXJX_53_A27_XFZZYNR_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���޿ν�ѧ��")]
            public Int32 BXKJXBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ҵ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYNR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}

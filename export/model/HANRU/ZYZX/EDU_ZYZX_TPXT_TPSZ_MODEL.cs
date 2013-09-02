namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_TPXT_TPSZ_metadata))]
    public partial class EDU_ZYZX_TPXT_TPSZ
    {
        public EDU_ZYZX_TPXT_TPSZ()
        {
        }
        public class EDU_ZYZX_TPXT_TPSZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ͶƱ����")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Display(Name = "����")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TITLE { get; set; }


            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CONTENT { get; set; }


            [Display(Name = "��ʾ��ʽ")]
            public Int32 SHOWSTYLEID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʾ��ʽ")]
            public Int32 CSSID { get; set; }


            [Display(Name = "ͶƱ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LOGINNAMELIST { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���")]
            public Int32 STARTSTATU { get; set; }


        }
    }
}

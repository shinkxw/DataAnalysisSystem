namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_TPXT_TPTM_metadata))]
    public partial class EDU_ZYZX_TPXT_TPTM
    {
        public EDU_ZYZX_TPXT_TPTM()
        {
        }
        public class EDU_ZYZX_TPXT_TPTM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ͶƱ��Ŀ")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ͶƱ")]
            public Int32 TPID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ͶƱ��ʽ")]
            public Int32 TYPEID { get; set; }


            [Display(Name = "����")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TITLE { get; set; }


            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CONTENT { get; set; }


        }
    }
}

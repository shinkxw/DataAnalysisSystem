namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_TPXT_TPXX_metadata))]
    public partial class EDU_ZYZX_TPXT_TPXX
    {
        public EDU_ZYZX_TPXT_TPXX()
        {
        }
        public class EDU_ZYZX_TPXT_TPXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ͶƱ��Ŀѡ��")]
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
            [Display(Name = "ͶƱ��Ŀ")]
            public Int32 TMID { get; set; }


            [Display(Name = "����")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TITLE { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѡ����")]
            public Int32 SUMTP { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_TPXT_TPYS_metadata))]
    public partial class EDU_WZXT_TPXT_TPYS
    {
        public EDU_WZXT_TPXT_TPYS()
        {
            NAME = "";
        }
        public class EDU_WZXT_TPXT_TPYS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʽ")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʽ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Display(Name = "Ч��ͼ")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHOWIMG { get; set; }


        }
    }
}

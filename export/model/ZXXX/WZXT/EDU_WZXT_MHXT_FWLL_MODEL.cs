namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_FWLL_metadata))]
    public partial class EDU_WZXT_MHXT_FWLL
    {
        public EDU_WZXT_MHXT_FWLL()
        {
            ACCESSIP = "";
            ACCESSURL = "";
        }
        public class EDU_WZXT_MHXT_FWLL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����IP")]
            [StringLength(150)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ACCESSIP { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ACCESSURL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime ACCESSTIME { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_35_A02_RWJSR_metadata))]
    public partial class EDU_OAXT_35_A02_RWJSR
    {
        public EDU_OAXT_35_A02_RWJSR()
        {
            JSRID = "";
        }
        public class EDU_OAXT_35_A02_RWJSR_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 RWID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ķ�״̬")]
            public Int32 YDZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 WCZT { get; set; }


        }
    }
}

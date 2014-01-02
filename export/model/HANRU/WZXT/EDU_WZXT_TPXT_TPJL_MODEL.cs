namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_TPXT_TPJL_metadata))]
    public partial class EDU_WZXT_TPXT_TPJL
    {
        public EDU_WZXT_TPXT_TPJL()
        {
            TPIP = "";
            TPTIME = DateTime.Now;
        }
        public class EDU_WZXT_TPXT_TPJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ͶƱ��¼")]
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ͶƱ��")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TPIP { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ͶƱʱ��")]
            public DateTime TPTIME { get; set; }


        }
    }
}

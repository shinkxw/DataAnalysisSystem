namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_FBQX_metadata))]
    public partial class EDU_WZXT_MHXT_FBQX
    {
        public EDU_WZXT_MHXT_FBQX()
        {
            LOGINNAME = "";
            LMLIST = "";
        }
        public class EDU_WZXT_MHXT_FBQX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ȩ��")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LOGINNAME { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMLIST { get; set; }


            [Display(Name = "��Ŀ����")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMNAMELIST { get; set; }


        }
    }
}

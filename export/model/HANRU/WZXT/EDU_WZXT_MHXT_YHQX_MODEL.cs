namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_YHQX_metadata))]
    public partial class EDU_WZXT_MHXT_YHQX
    {
        public EDU_WZXT_MHXT_YHQX()
        {
            LOGINNAME = "";
            JSIDLST = "";
            JSNAMELST = "";
        }
        public class EDU_WZXT_MHXT_YHQX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "Ȩ��")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LOGINNAME { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 LX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ɫID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSIDLST { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ɫ�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSNAMELST { get; set; }


        }
    }
}

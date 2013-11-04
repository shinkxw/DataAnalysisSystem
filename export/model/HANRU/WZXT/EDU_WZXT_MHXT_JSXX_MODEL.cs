namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_JSXX_metadata))]
    public partial class EDU_WZXT_MHXT_JSXX
    {
        public EDU_WZXT_MHXT_JSXX()
        {
            JSMC = "";
            LMIDLB = "";
        }
        public class EDU_WZXT_MHXT_JSXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "��ɫ")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ɫ����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ɫ����")]
            public Int32 JSLX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ĿID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMIDLB { get; set; }


            [Display(Name = "��Ŀ�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMMCLB { get; set; }


        }
    }
}

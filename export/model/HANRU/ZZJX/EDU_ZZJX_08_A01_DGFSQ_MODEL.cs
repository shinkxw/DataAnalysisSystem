namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_08_A01_DGFSQ_metadata))]
    public partial class EDU_ZZJX_08_A01_DGFSQ
    {
        public EDU_ZZJX_08_A01_DGFSQ()
        {
            SFYSH = "";
        }
        public class EDU_ZZJX_08_A01_DGFSQ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ѽɽ��")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal YJJE { get; set; }


            [Display(Name = "�ɷ�����")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JFRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFYSH { get; set; }


            [Display(Name = "�����Ա")]
            public Int32 SHRID { get; set; }


        }
    }
}
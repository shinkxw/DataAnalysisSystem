namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_50_A02_KKSJ_metadata))]
    public partial class EDU_ZXJX_50_A02_KKSJ
    {
        public EDU_ZXJX_50_A02_KKSJ()
        {
            SKSJ = "";
            SDIDLB = "";
            SDMCLB = "";
        }
        public class EDU_ZXJX_50_A02_KKSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ͽ�ʱ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʱ��ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SDIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʱ�������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SDMCLB { get; set; }


        }
    }
}

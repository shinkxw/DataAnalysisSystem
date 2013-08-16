namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_10_A03_GG_metadata))]
    public partial class EDU_OAXT_10_A03_GG
    {
        public EDU_OAXT_10_A03_GG()
        {
            FBRID = "";
            FBBM = "";
            BT = "";
            NR = "";
        }
        public class EDU_OAXT_10_A03_GG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBBM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime FBSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 ZT { get; set; }


        }
    }
}

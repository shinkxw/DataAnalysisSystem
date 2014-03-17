namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_02_A04_GZNR_metadata))]
    public partial class EDU_ZYFZ_02_A04_GZNR
    {
        public EDU_ZYFZ_02_A04_GZNR()
        {
            BT = "";
            GJC = "";
            SFGK = "";
            NR = "";
            FBRID = "";
            FBSJ = DateTime.Now;
        }
        public class EDU_ZYFZ_02_A04_GZNR_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ؼ���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GJC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 SSLMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѧ��")]
            public Int32 SSXKID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����꼶")]
            public Int32 SSNJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ񹫿�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFGK { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime FBSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����")]
            public Int32 LLL { get; set; }


        }
    }
}

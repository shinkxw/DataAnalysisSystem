namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_01_A06_JZGNLZSSH_metadata))]
    public partial class EDU_ZXJZ_01_A06_JZGNLZSSH
    {
        public EDU_ZXJZ_01_A06_JZGNLZSSH()
        {
            ZSMC = "";
            ZSBFRQ = "";
            SFSZYZGZS = "";
        }
        public class EDU_ZXJZ_01_A06_JZGNLZSSH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ְ��")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "֤������")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSMC { get; set; }


            [Display(Name = "֤����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSBH { get; set; }


            [Display(Name = "֤��䷢��λ")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSBFDW { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "֤��䷢����")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSBFRQ { get; set; }


            [Display(Name = "֤�鱸ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSBZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ���ְҵ�ʸ�֤��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSZYZGZS { get; set; }


            [Display(Name = "���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


        }
    }
}

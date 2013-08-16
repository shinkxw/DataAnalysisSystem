namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXX_04_A01_JGGW_metadata))]
    public partial class EDU_ZXXX_04_A01_JGGW
    {
        public EDU_ZXXX_04_A01_JGGW()
        {
            JGH = "";
            GWBH = "";
            GWSM = "";
        }
        public class EDU_ZXXX_04_A01_JGGW_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ��")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JGH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��λ���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWBH { get; set; }


            [Display(Name = "��λ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��λ˵��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWSM { get; set; }


        }
    }
}

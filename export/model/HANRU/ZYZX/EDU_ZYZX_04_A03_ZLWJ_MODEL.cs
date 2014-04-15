namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_04_A03_ZLWJ_metadata))]
    public partial class EDU_ZYZX_04_A03_ZLWJ
    {
        public EDU_ZYZX_04_A03_ZLWJ()
        {
            BT = "";
            SCSJ = DateTime.Now;
            SCNR = "";
        }
        public class EDU_ZYZX_04_A03_ZLWJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ԴĿ¼")]
            public Int32 ZYMLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϴ�ʱ��")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ϴ�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SCNR { get; set; }


        }
    }
}

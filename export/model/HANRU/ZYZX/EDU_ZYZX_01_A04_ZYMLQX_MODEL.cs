namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A04_ZYMLQX_metadata))]
    public partial class EDU_ZYZX_01_A04_ZYMLQX
    {
        public EDU_ZYZX_01_A04_ZYMLQX()
        {
            QXLB = "";
        }
        public class EDU_ZYZX_01_A04_ZYMLQX_metadata
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


            [Required(ErrorMessage = "����")]
            [Display(Name = "�û�����")]
            public Int32 YHLX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ȩ���б�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QXLB { get; set; }


        }
    }
}

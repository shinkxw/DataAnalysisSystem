namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_04_A02_ZLWJMLQX_metadata))]
    public partial class EDU_ZYZX_04_A02_ZLWJMLQX
    {
        public EDU_ZYZX_04_A02_ZLWJMLQX()
        {
            YHID = "";
        }
        public class EDU_ZYZX_04_A02_ZLWJMLQX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ԴĿ¼")]
            public Int32 ZYMLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ܱ��")]
            public Int32 GNBH { get; set; }


        }
    }
}

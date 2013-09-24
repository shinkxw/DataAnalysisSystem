namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_04_01_KMKS_metadata))]
    public partial class EDU_JPXT_04_01_KMKS
    {
        public EDU_JPXT_04_01_KMKS()
        {
            KSSJ = new DateTime(1900, 1, 1);
            BZ = "";
        }
        public class EDU_JPXT_04_01_KMKS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ա")]
            public Int32 JLYOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 KMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}

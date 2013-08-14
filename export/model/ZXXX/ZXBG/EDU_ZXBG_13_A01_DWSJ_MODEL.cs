namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXBG_13_A01_DWSJ_metadata))]
    public partial class EDU_ZXBG_13_A01_DWSJ
    {
        public EDU_ZXBG_13_A01_DWSJ()
        {
        }
        public class EDU_ZXBG_13_A01_DWSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "�ϼ���λ")]
            public Int32 SJDWID { get; set; }


            [Display(Name = "��λ������")]
            public Int32 DWFZRID { get; set; }


            [Display(Name = "��λ����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DWMC { get; set; }


            [Display(Name = "��λ��ԱID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DWCYIDLB { get; set; }


        }
    }
}

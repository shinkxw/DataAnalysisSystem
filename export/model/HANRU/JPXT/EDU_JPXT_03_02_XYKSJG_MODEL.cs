namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_03_02_XYKSJG_metadata))]
    public partial class EDU_JPXT_03_02_XYKSJG
    {
        public EDU_JPXT_03_02_XYKSJG()
        {
        }
        public class EDU_JPXT_03_02_XYKSJG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧԱ")]
            public Int32 XYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ����")]
            public Int32 KMKSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���Խ��")]
            public Int32 KSJG { get; set; }


        }
    }
}

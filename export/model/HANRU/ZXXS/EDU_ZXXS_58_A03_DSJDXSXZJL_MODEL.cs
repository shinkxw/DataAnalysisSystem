namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_58_A03_DSJDXSXZJL_metadata))]
    public partial class EDU_ZXXS_58_A03_DSJDXSXZJL
    {
        public EDU_ZXXS_58_A03_DSJDXSXZJL()
        {
        }
        public class EDU_ZXXS_58_A03_DSJDXSXZJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ1")]
            public Int32 JS1ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ2")]
            public Int32 JS2ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ����1")]
            public Int32 XZJG1 { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ����2")]
            public Int32 XZJG2 { get; set; }


        }
    }
}

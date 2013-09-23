namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_03_02_XYKSQK_metadata))]
    public partial class EDU_JPXT_03_02_XYKSQK
    {
        public EDU_JPXT_03_02_XYKSQK()
        {
        }
        public class EDU_JPXT_03_02_XYKSQK_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧԱ")]
            public Int32 XYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀһ����ʱ��")]
            public DateTime KMYIKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀһ���Խ��")]
            public Int32 KMYIKSJG { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ������ʱ��")]
            public DateTime KMERKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ�����Խ��")]
            public Int32 KMERYKSJG { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ������ʱ��")]
            public DateTime KMSANKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ�����Խ��")]
            public Int32 KMSANKSJG { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ�Ŀ���ʱ��")]
            public DateTime KMSIKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ�Ŀ��Խ��")]
            public Int32 KMSIKSJG { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ�忼��ʱ��")]
            public DateTime KMWUKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ�忼�Խ��")]
            public Int32 KMWUKSJG { get; set; }


        }
    }
}

namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A04_SXGW_metadata))]
    public partial class EDU_ZZJX_07_A04_SXGW
    {
        public EDU_ZZJX_07_A04_SXGW()
        {
            GWMC = "";
            XBYQ = "";
            GWXC = "";
            WYYQ = "";
            GZDD = "";
            JSJSP = "";
            XLYQ = "";
            ZYYQ = "";
            GWJJ = "";
            JBQK = "";
            GZJY = "";
        }
        public class EDU_ZZJX_07_A04_SXGW_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��λ")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵ")]
            public Int32 QYID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��λ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵ����")]
            public Int32 QYMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ƹ��ʼʱ��")]
            public DateTime ZPKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ƹ����ʱ��")]
            public DateTime ZPJSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ʽ")]
            public Int32 GZXS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ա�Ҫ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XBYQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��λн��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWXC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����Ҫ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WYYQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ص�")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZDD { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ˮƽ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSJSP { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ƹ����")]
            public Int32 ZPRS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ��Ҫ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XLYQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "רҵҪ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYYQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ҫ��")]
            public Int32 NLYQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��λ���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWJJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBQK { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZJY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ״̬")]
            public Int32 GWZT { get; set; }


        }
    }
}
